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


module QuestionFourTestBench(

    );
    reg [1:0]A;
    reg [1:0]B;
    wire [2:0]P;
    wire c;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    QuestionFourDesignSource dut(.A(A),.B(B),.P(P),.Carry(c));
    initial begin
    A[0]=1;
    B[0]=1;
    A[1]=1;
    B[1]=1;
    #10;
    A[0]=0;
    B[0]=0;
    A[1]=1;
    B[1]=1;
    #10;
    A[0]=1;
    B[0]=0;
    A[1]=1;
    B[1]=1; 
    #10;
    A[0]=1;
    B[0]=1;
    A[1]=1;
    B[1]=0; 
    #10;
    A[0]=0;
    B[0]=0;
    A[1]=1;
    B[1]=0;                            
    end
endmodule
