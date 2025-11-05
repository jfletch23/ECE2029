`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2025 03:14:37 PM
// Design Name: 
// Module Name: LabTwoQuestionTwoDesignSource
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


module LabTwoQuestionTwoDesignSource(
    input A,
    input B,
    input C,
    input D,
    output F
    );
    assign F = (~B)&(~C)&(~D) | B&C&D | (~A)&B&C | (~B)&C&(~D);
endmodule
