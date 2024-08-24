
// =====================================
//     Mase Hardware
//     Parameter: encoder_layer_2_attention_self_value_bias
//     18/08/2024 23:19:04
// =====================================

`timescale 1 ns / 1 ps
module encoder_layer_2_attention_self_value_bias_rom #(
  parameter DWIDTH = 32,
  parameter MEM_SIZE = 24,
  parameter AWIDTH = $clog2(MEM_SIZE) + 1
) (
    input clk,
    input logic [AWIDTH-1:0] addr0,
    input ce0,
    output logic [DWIDTH-1:0] q0
);

  logic [DWIDTH-1:0] ram[0:MEM_SIZE-1];
  logic [DWIDTH-1:0] q0_t0;
  logic [DWIDTH-1:0] q0_t1;

  initial begin
    $readmemh("/root/.mase/top/hardware/rtl/encoder_layer_2_attention_self_value_bias_rom.dat", ram);
  end

  assign q0 = q0_t1;

  always_ff @(posedge clk) if (ce0) q0_t1 <= q0_t0;
  always_ff @(posedge clk) if (ce0) q0_t0 <= ram[addr0];

endmodule

`timescale 1 ns / 1 ps
module encoder_layer_2_attention_self_value_bias #(
  parameter DATA_WIDTH = 32'd32,
  parameter ADDR_RANGE = 32'd24,
  parameter ADDR_WIDTH = $clog2(ADDR_RANGE) + 1
) (
  input reset,
  input clk,
  input logic [ADDR_WIDTH - 1:0] address0,
  input ce0,
  output logic [DATA_WIDTH - 1:0] q0
);

  encoder_layer_2_attention_self_value_bias_rom encoder_layer_2_attention_self_value_bias_rom_U (
      .clk(clk),
      .addr0(address0),
      .ce0(ce0),
      .q0(q0)
  );

endmodule


`timescale 1ns / 1ps
module encoder_layer_2_attention_self_value_bias_source #(
    parameter VALUE_BIAS_TENSOR_SIZE_DIM_0  = 32,
    parameter VALUE_BIAS_TENSOR_SIZE_DIM_1  = 1,
    parameter VALUE_BIAS_PRECISION_0 = 16,
    parameter VALUE_BIAS_PRECISION_1 = 3,

    parameter VALUE_BIAS_PARALLELISM_DIM_0 = 1,
    parameter VALUE_BIAS_PARALLELISM_DIM_1 = 1,
    parameter OUT_DEPTH = VALUE_BIAS_TENSOR_SIZE_DIM_0 / VALUE_BIAS_PARALLELISM_DIM_0
) (
    input clk,
    input rst,

    output logic [VALUE_BIAS_PRECISION_0-1:0] data_out      [VALUE_BIAS_PARALLELISM_DIM_0 * VALUE_BIAS_PARALLELISM_DIM_1-1:0],
    output                       data_out_valid,
    input                        data_out_ready
);
  // 1-bit wider so IN_DEPTH also fits.
  localparam COUNTER_WIDTH = $clog2(OUT_DEPTH);
  logic [COUNTER_WIDTH:0] counter;

  always_ff @(posedge clk)
    if (rst) counter <= 0;
    else begin
      if (data_out_ready) begin
        if (counter == OUT_DEPTH - 1) counter <= 0;
        else counter <= counter + 1;
      end
    end

  logic ce0;
  assign ce0 = 1;

  logic [VALUE_BIAS_PRECISION_0*VALUE_BIAS_TENSOR_SIZE_DIM_0-1:0] data_vector;
  encoder_layer_2_attention_self_value_bias #(
      .DATA_WIDTH(VALUE_BIAS_PRECISION_0 * VALUE_BIAS_TENSOR_SIZE_DIM_0),
      .ADDR_RANGE(OUT_DEPTH)
  ) encoder_layer_2_attention_self_value_bias_mem (
      .clk(clk),
      .reset(rst),
      .address0(counter),
      .ce0(ce0),
      .q0(data_vector)
  );

  // Cocotb/verilator does not support array flattening, so
  // we need to manually add some reshaping process.
  for (genvar j = 0; j < VALUE_BIAS_PARALLELISM_DIM_0 * VALUE_BIAS_PARALLELISM_DIM_1; j++)
    assign data_out[j] = data_vector[VALUE_BIAS_PRECISION_0*j+VALUE_BIAS_PRECISION_0-1:VALUE_BIAS_PRECISION_0*j];

  assign data_out_valid = 1;

endmodule
