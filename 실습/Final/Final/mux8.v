`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:59 06/05/2018 
// Design Name: 
// Module Name:    mux8 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux8(
    input [7:0] in1,
	 input [7:0] in2,
	 input enable,
    output [7:0] out
    );

	 reg [7:0] T;
	 
	 assign out = T;
	 
	 always@(in1 or in2 or enable)
		 begin
			 if(enable == 1'b0)
				 begin
					 T = in1;
				 end
			 else
				 begin
					 T = in2;
				 end
		 end
		 
endmodule
