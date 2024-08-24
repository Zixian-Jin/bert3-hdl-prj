import os
import cocotb
from cocotb.runner import get_runner


@cocotb.test()
async def test(dut):
    from pathlib import Path
    import dill
    from cocotb.triggers import Timer

    tb_path = Path.home() / "bert3-hdl-prj" / "test" / "mase_top_tb"
    with open(tb_path / "tb_obj.dill", "rb") as f:
        tb = dill.load(f)(dut, fail_on_checks=True)

    await tb.initialize()

    in_tensors = tb.generate_inputs(batches=1)
    exp_out = tb.model(*list(in_tensors.values()))

    tb.load_drivers(in_tensors)
    tb.load_monitors(exp_out)

    await tb.wait_end(timeout=15, timeout_unit="ms")


def main():
    sim = os.getenv('SIM')
    runner = get_runner(sim)
    
    sources = []
    rtl_dir = './../../rtl'
    for filename in  os.listdir(rtl_dir):
        sources.append(os.path.join(rtl_dir, filename))
    hdl_toplevel = 'top'
    tb_module = 'tb_bert'
    
    runner.build(
        verilog_sources=sources,
        hdl_toplevel=hdl_toplevel,
        always=True
    )

    runner.test(
        hdl_toplevel=hdl_toplevel,
        test_module=tb_module
    )
    
    
if __name__ == '__main__':
    main()
