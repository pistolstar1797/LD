`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:45:04 04/24/2018 
// Design Name: 
// Module Name:    OneBitALU 
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
module OneBitALU(
    input m,
    input [1:0] s,
    input a,
    input b,
    output f
    );
	 
	 reg out;
	 
	 assign sel = {m, s[0]};
	 assign f = out;
	 
	 always@(m or s or a or b)
		 begin
			 if(s[1]==1'b0)
				 begin
					 case(s[0])
						 1'b0 : out = a;
						 1'b1 : out = !a;
					 endcase
				 end
			 else
				 begin
					 case(sel)
						 2'b00 : out = (!a & b) | (!b & a);
						 2'b01 : out = !((!a & b) | (!b & a));
						 2'b00 : out = a | b;
						 2'b00 : out = (!a) | b;
					 endcase
				 end
		 end

endmodule