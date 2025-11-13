`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 04:41:20 PM
// Design Name: 
// Module Name: QuestionThreeTestBench
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


module QuestionThreeTestBench(

    );
    reg [2:0]A;
    reg [2:0]B;
    reg M;
    wire [2:0]D;
    wire c;
    wire V;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    QuestionThree dut(.A(A),.B(B),.M(M),.D(D),.Carry(c),.V(V));
    initial begin
    A[0]=1;
    B[0]=1;
    A[1]=1;
    B[1]=0;
    A[2]=1;
    B[2]=1;
    M=1;
    #10;
    A[0]=1;
    B[0]=1;
    A[1]=1;
    B[1]=0;
    A[2]=1;
    B[2]=0;
    M=1;
    #10;
    A[0]=1;
    B[0]=0;
    A[1]=1;
    B[1]=1;
    A[2]=1;
    B[2]=0;
    M=1;
    #10;
    A[0]=1;
    B[0]=1;
    A[1]=1;
    B[1]=1;
    A[2]=1;
    B[2]=0;
    M=1;
    #10;
    A[0]=1;
    B[0]=0;
    A[1]=1;
    B[1]=0;
    A[2]=1;
    B[2]=1;
    M=1;
    #10;
    A[0]=0;
    B[0]=1;
    A[1]=0;
    B[1]=1;
    A[2]=1;
    B[2]=0;
    M=1;
    #10;
    A[0]=0;
    B[0]=1;
    A[1]=0;
    B[1]=1;
    A[2]=1;
    B[2]=0;
    M=0;                        
    end
endmodule
