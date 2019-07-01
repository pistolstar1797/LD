`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:39 06/05/2018 
// Design Name: 
// Module Name:    microprocessor 
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
module microprocessor(
	 input _clk,
	 input reset,
	 input [7:0] instruction,
	 output [7:0] address,
	 output [6:0] bnum,
	 output [6:0] snum,
	 output [5:0] LED
    );

	 wire [7:0] extinst;
	 wire [7:0] nextaddress;
	 wire [7:0] jumpedaddress;
	 wire clock;
	 wire [7:0] cu;
	 wire [7:0] _pc;
	 wire [1:0] _wr;
	 wire [7:0] _wd;
	 wire [7:0] _rd1;
	 wire [7:0] _rd2;
	 wire [7:0] alu_b;
	 wire [7:0] alu_c;
	 wire [7:0] mem_rd;
	 wire [7:0] one = 1;
	 reg [7:0] _rd;
	 
	 clk CLOCK(.clkin(_clk), .clkout(clock));
	 pc PC(.in(_pc), .clkin(clock), .reset(reset), .out(address));
	 control CON(.in(instruction[7:6]), .out(cu));
	 memory MEM(.address(alu_c), .wd(_rd2), .clock(clock), .read(cu[5]), .write(cu[4]), .reset(reset), .rd(mem_rd));
	 register REG(.rr1(instruction[5:4]), .rr2(instruction[3:2]), .clock(clock), .write(cu[1]), .reset(reset),
	 .wr(_wr), .wd(_wd), .rd1(_rd1), .rd2(_rd2));
	 alu ALU(.in1(_rd1), .in2(alu_b), .out(alu_c));
	 mux8 PCMUX(.in1(nextaddress), .in2(jumpedaddress), .enable(cu[7]), .out(_pc));
	 mux8 ALUMUX(.in1(_rd2), .in2(extinst), .enable(cu[2]), .out(alu_b));
	 mux8 MEMMUX(.in1(alu_c), .in2(mem_rd), .enable(cu[6]), .out(_wd));
	 mux WMUX(.in1(instruction[3:2]), .in2(instruction[1:0]), .enable(cu[0]), .out(_wr));
	 add ADD1(.in1(one), .in2(address), .out(nextaddress));
	 add ADDJ(.in1(nextaddress), .in2(extinst), .out(jumpedaddress));
	 BCDto7 BNUM(.bcd(_wd[7:4]), .seg(bnum));
	 BCDto7 SNUM(.bcd(_wd[3:0]), .seg(snum));
	 signextend EXT(.in(instruction[1:0]), .out(extinst));
	 Bcount ADDITIONAL(.clock(clock), .reset(reset), .LED(LED));
 
endmodule
