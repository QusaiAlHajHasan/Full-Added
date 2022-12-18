`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:44:21 03/26/2020 
// Design Name: 
// Module Name:    FA 
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
module FA(A,B,Cin,S,Cout);
	input A,B,Cin;
	output S,Cout;
	wire [2:0] w;
	
	xor(w[0],A,B);
	xor(S,w[0],Cin);
	and(w[1],w[0],Cin);
	and(w[2],A,B);
	or(Cout,w[1],w[2]);

endmodule
