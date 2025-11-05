`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2025 04:20:30 PM
// Design Name: 
// Module Name: LabTwoQuestionFourDesignSource
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


module LabTwoQuestionFourDesignSource(
    input X,
    input Y,
    input Z,
    output S,
    output C
    );
    assign S = (X ^ Y) ^ (Z);
    assign C = X&Y | ((X ^ Y) & Z);
endmodule
