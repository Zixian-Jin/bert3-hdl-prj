`timescale 1ns / 1ps
module gelu_lut #(
  .DATA_IN_0_PRECISION_0 = 8,
  .DATA_IN_0_PRECISION_1 = 0,
  .DATA_OUT_0_PRECISION_0 = 8,
  .DATA_OUT_0_PRECISION_1 = 0
) (
  input [DATA_IN_0_PRECISION_0 - 1 : 0] data_in_0,
  output [DATA_IN_0_PRECISION_0 - 1 : 0] data_out_0
);

  assign data_out_0 = $signed(data_in_0) < 0 ? 0 : data_in_0;
  
endmodule
