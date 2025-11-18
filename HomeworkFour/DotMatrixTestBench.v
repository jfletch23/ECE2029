`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 12:34:25 AM
// Design Name: 
// Module Name: DotMatrixTestBench
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


module DotMatrixTestBench(

    );
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    reg A;
    reg B;
    reg C;
    reg D;
    wire [2:0]AP;
    wire [2:0]BP;
    wire [2:0]CP;
    wire [2:0]DP;
    wire [2:0]EP;
    DotMatrix dut(.W(A),.X(B),.Y(C),.Z(D),.A(AP),.B(BP),.C(CP),.D(DP),.E(EP));
    
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
