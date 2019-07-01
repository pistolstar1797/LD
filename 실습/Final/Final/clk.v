`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:57 06/05/2018 
// Design Name: 
// Module Name:    clk 
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
module clk(
    input clkin,
    output reg clkout
    );
	 reg [31:0] cnt;
	 initial begin
		 clkout = 0;
		 cnt = 0;
	 end
	 always @(posedge clkin) begin
		if(cnt == 32'd25000000) 
		begin
			cnt <= 32'd0;
			clkout <= ~clkout;
		end
		else begin
			cnt <= cnt+1;
		end
	 end

endmodule
