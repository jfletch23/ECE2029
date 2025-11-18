`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 12:02:34 AM
// Design Name: 
// Module Name: FourSixteenDecoder
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


module FourSixteenDecoder(
    input A,
    input B,
    input C,
    input D,
    output [3:0]W,
    output [3:0]X,
    output [3:0]Y,
    output [3:0]Z
    );
    wire [3:0]E;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    TwoOneDecoder d1(.A(A),.B(B),.Y(E));
    TwoOneDecoderEnable d2(.A(C),.B(D),.E(E[0]),.Y(W));
    TwoOneDecoderEnable d3(.A(C),.B(D),.E(E[1]),.Y(X));
    TwoOneDecoderEnable d4(.A(C),.B(D),.E(E[2]),.Y(Y));
    TwoOneDecoderEnable d5(.A(C),.B(D),.E(E[3]),.Y(Z));
endmodule
