`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2025 03:31:49 PM
// Design Name: 
// Module Name: LabTwoQuestionThreeDesignSource
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


module LabTwoQuestionThreeDesignSource(
    input X,
    input Y,
    output S,
    output C
    );
    assign S = X&(~Y) | (~X)&Y;
    assign C = X&Y;
endmodule
