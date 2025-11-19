`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 01:56:30 PM
// Design Name: 
// Module Name: SevenSegmentTestBench
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


module SevenSegmentTestBench(

    );
    reg A;
    reg B;
    reg C;
    reg D;
    wire [6:0]L;
    SevenSegment dut(.A(A),.B(B),.C(C),.D(D),.L(L));
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
