`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2025 02:39:53 PM
// Design Name: 
// Module Name: LabTwoDesignSource
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


module LabTwoDesignSource(
    input A,
    input B,
    input C,
    input D,
    output K,
    output L,
    output M,
    output N
    );
    assign K = B | D | C;
    assign L = B&(~C)&(~D) | (~B)&D | (~B)&C;
    assign M = (~C)&D | C&(~D);
    assign N = D;
endmodule
