`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:51 06/05/2018 
// Design Name: 
// Module Name:    register 
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
module register(
    input [1:0] rr1,
    input [1:0] rr2,
	 input clock,
	 input write,
	 input reset,
    input [1:0] wr,
    input [7:0] wd,
    output [7:0] rd1,
    output [7:0] rd2
    );

	 reg [7:0]regist[3:0];
	 
	 initial begin
			 regist[0] = 8'b00000000;
			 regist[1] = 8'b00000000;
			 regist[2] = 8'b00000000;
			 regist[3] = 8'b00000000;
	 end
	 
	 always @(posedge reset or posedge clock) begin
		 if(reset == 1) begin
			 regist[0] = 8'b00000000;
			 regist[1] = 8'b00000000;
			 regist[2] = 8'b00000000;
			 regist[3] = 8'b00000000;
		 end
		 else if(write == 1) begin
			 regist[wr] = wd;
		 end
	 end
	 
	 assign rd1 = regist[rr1];
	 assign rd2 = regist[rr2];
		 

endmodule
