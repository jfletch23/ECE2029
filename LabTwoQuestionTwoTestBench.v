`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2025 03:21:31 PM
// Design Name: 
// Module Name: LabTwoQuestionTwoTestBench
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


module LabTwoQuestionTwoTestBench(

    );
    LabTwoQuestionTwoDesignSource dut(A,B,C,D,F);
    reg A;
    reg B;
    reg C;
    reg D;
    wire F;
    initial begin
    A=0;
    B=0;
    C=0;
    D=0;
    #10;
    A=0;
    B=0;
    C=0;
    D=1;
    #10;
    A=0;
    B=0;
    C=1;
    D=0;
    #10;
    A=0;
    B=0;
    C=1;
    D=1;
    #10;
    A=0;
    B=1;
    C=0;
    D=0;
    #10;
    A=0;
    B=1;
    C=0;
    D=1;
    #10;
    A=0;
    B=1;
    C=1;
    D=0;
    #10;
    A=0;
    B=1;
    C=1;
    D=1;
    #10;
    A=1;
    B=0;
    C=0;
    D=0;
    #10;
    A=1;
    B=0;
    C=0;
    D=1;
    #10;
    A=1;
    B=0;
    C=1;
    D=0;
    #10;
    A=1;
    B=0;
    C=1;
    D=1;
    #10;
    A=1;
    B=1;
    C=0;
    D=0;
    #10;
    A=1;
    B=1;
    C=0;
    D=1;
    #10;
    A=1;
    B=1;
    C=1;
    D=0;
    #10;
    A=1;
    B=1;
    C=1;
    D=1;
    end
    
endmodule
