`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2025 11:42:31 PM
// Design Name: 
// Module Name: TwoOneDecoder
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


module TwoOneDecoder(
    input A,
    input B,
    output [3:0]Y
    );
    assign Y[0] = (~A)&(~B);
    assign Y[1] = (~A)&B;
    assign Y[2] = A&(~B);
    assign Y[3] = A&B;
endmodule
