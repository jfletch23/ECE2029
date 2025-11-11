`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2025 11:37:30 PM
// Design Name: 
// Module Name: HomeworkThreeDesignSource
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


module HomeworkThreeDesignSource(
    input D,
    input C,
    input B,
    input A,
    output K,
    output L,
    output M,
    output N
    );
    assign K = D | A&C | B&C;
    assign L = (~B)&(~A)&C | A&(~C) | B&(~C);
    assign M = (~B)&(~A) | B&A;
    assign N = ~A;
endmodule
