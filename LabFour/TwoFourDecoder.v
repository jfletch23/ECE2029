`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 08:08:27 AM
// Design Name: 
// Module Name: TwoFourDecoder
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


module TwoFourDecoder(
    input A,
    input B,
    output [3:0]Y
    );
    assign Y[0] = (~A)&(~B);
    assign Y[1] = (~A)&B;
    assign Y[2] = A&(~B);
    assign Y[3] = A&B;
endmodule
