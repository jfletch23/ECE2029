`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2025 11:45:19 PM
// Design Name: 
// Module Name: HomeworkThreeTestBench
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


module HomeworkThreeTestBench(

    );
    HomeworkThreeDesignSource dut(.D(D),.C(C),.B(B),.A(A),.K(K),.L(L),.M(M),.N(N));
    reg D;
    reg C;
    reg B;
    reg A;
    wire K;
    wire L;
    wire M;
    wire N;
    initial begin
    D=0;
    C=0;
    B=0;
    A=0;
    #10;
    D=0;
    C=0;
    B=0;
    A=1;
    #10;
    D=0;
    C=0;
    B=1;
    A=0;
    #10;
    D=0;
    C=0;
    B=1;
    A=1;
    #10;
    D=0;
    C=1;
    B=0;
    A=0;
    #10;
    D=0;
    C=1;
    B=0;
    A=1;
    #10;
    D=0;
    C=1;
    B=1;
    A=0;
    #10;
    D=0;
    C=1;
    B=1;
    A=1;
    #10;
    D=1;
    C=0;
    B=0;
    A=0;
    #10;
    D=1;
    C=0;
    B=0;
    A=1;
    end
endmodule
