`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 01:56:11 PM
// Design Name: 
// Module Name: SevenSegment
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


module SevenSegment(
    input A,
    input B,
    input C,
    input D,
    output [6:0]L,
    wire [3:0]W,
    wire [3:0]X,
    wire [3:0]Y,
    wire [3:0]Z
    );
    FourSixteenDecoder d1(.A(A),.B(B),.C(C),.D(D),.W(W),.X(X),.Y(Y),.Z(Z));
    assign L[0] = W[0] | W[2] | W[3] | X[1] | X[2] | X[3] | Y[0] | Y[1];
    assign L[1] = W[0] | W[1] | W[2] | W[3] | X[0] | X[3] | Y[0] | Y[1];
    assign L[2] = W[0] | W[1] | W[3] | X[0] | X[1] | X[2] | X[3] | Y[0] | Y[1];
    assign L[3] = W[0] | W[2] | W[3] | X[1] | X[2] | Y[0] | Y[1];
    assign L[4] = W[0] | W[2] | X[2] | Y[0];
    assign L[5] = W[0] | X[0] | X[1] | X[2] | Y[0] | Y[1];
    assign L[6] = W[2] | W[3] | X[0] | X[1] | X[2] | Y[0] | Y[1];
endmodule
