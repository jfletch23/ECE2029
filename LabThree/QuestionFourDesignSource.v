`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 05:25:28 PM
// Design Name: 
// Module Name: QuestionFourDesignSource
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module QuestionFourDesignSource(
    input [1:0]A,
    input [1:0]B,
    output [2:0]P,
    output Carry
    );
wire c;
assign P[0] = A[0] & B[0];
wire gate1;
assign gate1 = A[1] & B[0];
wire gate2;
assign gate2 = A[0] & B[1];
wire gate3;
assign gate3 = A[1] & B[1];
QuestionOneDesignSource f1(.X(gate1),.Y(gate2),.Z(0),.Sum(P[1]),.Carry(c));
QuestionOneDesignSource f2(.X(gate3),.Y(c),.Z(0),.Sum(P[2]),.Carry(Carry));   
endmodule

