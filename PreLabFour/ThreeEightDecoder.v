`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 02:11:49 AM
// Design Name: 
// Module Name: ThreeEightDecoder
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


module ThreeEightDecoder(
    input A,
    input B,
    //Have 3 inputs and 8 outputs per decoder specification
    input E,
    //Using a bus for output so I don't have to type output Y1, output Y2, etc...
    //Can't just do [7:0]Y because my output is divided between two decoders each outputting 4 signals
    output [3:0]Y,
    output [3:0]Z
    );
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    //Note how I invert the Enable signal going into this decoder so only 1 decoder is enabled at a time
    TwoFourDecoderEnable d1(.A(A),.B(B),.E(~E),.Y(Y));
    TwoFourDecoderEnable d2(.A(A),.B(B),.E(E),.Y(Z));
endmodule
