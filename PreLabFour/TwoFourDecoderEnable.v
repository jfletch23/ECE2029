`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 02:08:14 AM
// Design Name: 
// Module Name: TwoFourDecoderEnable
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


module TwoFourDecoderEnable(
    //Now have an extra input for enable (self explanatory what it does)
    input A,
    input B,
    input E,
    //Again using a bus to save time and lines of code
    output [3:0]Y
    );
    //Need an internal wire to take the output for the two four decoder and then AND it with enable input
    wire [3:0]out;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    TwoFourDecoder d1(.A(A),.B(B),.Y(out));
    //ANDing Enable signal with output from d1 (a decoder without an enable signal) to get final output
    assign Y[0] = E & out[0];
    assign Y[1] = E & out[1];
    assign Y[2] = E & out[2];
    assign Y[3] = E & out[3];
endmodule
