//-------------------------
// Copyright 2023
// Simple Adder Module
// Made by: Danknight
// Description: 
// This simple adder that adds inputs
// and produces an output in the next 
// clock cycle
//-------------------------
module adder #(
  parameter int unsigned DataWidth = 8
)(
  input  logic                 clk_i,
  input  logic                 rst_ni,
  input  logic [DataWidth-1:0] a_data_i,
  input  logic [DataWidth-1:0] b_data_i,
  output logic [DataWidth-1:0] c_data_o
);

  always_ff @ (posedge clk_i or negedge rst_ni) begin
    if ( !rst_ni ) begin
      c_data_o <= {DataWidth{1'b0}};
    end else begin
      c_data_o <= a_data_i + b_data_i;
    end
  end

endmodule
