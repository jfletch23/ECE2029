`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2025 11:50:40 PM
// Design Name: 
// Module Name: TwoOneDecoderEnable
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


module TwoOneDecoderEnable(
    input A,
    input B,
    input E,
    output [3:0]Y
    );
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    wire [3:0]out;
    TwoOneDecoder d1(.A(A),.B(B),.Y(out)); 
    assign Y[0] = E & out[0];
    assign Y[1] = E & out[1];
    assign Y[2] = E & out[2];
    assign Y[3] = E & out[3];
endmodule
