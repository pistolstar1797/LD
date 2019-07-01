`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:25:24 04/24/2018 
// Design Name: 
// Module Name:    FullAdder 
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
module FullAdder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
	 
	 wire c1, c2, s;
	 
	 HalfAdder T1(.a(a), .b(b), .sum(s), .cout(c1));
	 HalfAdder T2(.a(cin), .b(s), .sum(sum), .cout(c2));
	 or(cout, c1, c2);
endmodule
