`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 04:36:56 PM
// Design Name: 
// Module Name: QuestionThree
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


module QuestionThree(
    input [2:0]A,
    input [2:0]B,
    input M,
    output [2:0]D,
    output Carry
    );
    wire [2:0]c;
    wire inputOne;
    wire inputTwo;
    wire inputThree;
    assign inputOne = B[0] ^ M;
    assign inputTwo = B[1] ^ M;
    assign inputThree = B[2] ^ M;
    QuestionOneDesignSource f1(.X(A[0]),.Y(inputOne),.Z(1),.Sum(D[0]),.Carry(c[0]));
    QuestionOneDesignSource f2(.X(A[1]),.Y(inputTwo),.Z(c[0]),.Sum(D[1]),.Carry(c[1]));
    QuestionOneDesignSource f3(.X(A[2]),.Y(inputThree),.Z(c[1]),.Sum(D[2]),.Carry(c[2]));
    assign Carry = c[2];
    
endmodule
