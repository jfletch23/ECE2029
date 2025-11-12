`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 03:32:01 PM
// Design Name: 
// Module Name: QuestionTwoTestBench
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


module QuestionTwoTestBench(

    );
    reg [3:0]A;
    reg [3:0]B;
    wire [3:0]s;
    wire c;
    wire [3:0]BCD;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    QuestionTwoDesignSource dut(.A(A),.B(B),.s(s),.Carry(c),.BCD(BCD));
    initial begin
    A[0]=1;
    B[0]=1;
    A[1]=1;
    B[1]=0;
    A[2]=0;
    B[2]=1;
    A[3]=0;
    B[3]=0;
    #10;
    A[0]=0;
    B[0]=1;
    A[1]=1;
    B[1]=0;
    A[2]=0;
    B[2]=0;
    A[3]=0;
    B[3]=0;
    #10;
    A[0]=1;
    B[0]=1;
    A[1]=0;
    B[1]=0;
    A[2]=0;
    B[2]=0;
    A[3]=0;
    B[3]=1;
    #10;
    A[0]=0;
    B[0]=0;
    A[1]=0;
    B[1]=1;
    A[2]=0;
    B[2]=1;
    A[3]=1;
    B[3]=0;
    #10;
    A[0]=1;
    B[0]=0;
    A[1]=1;
    B[1]=0;
    A[2]=1;
    B[2]=0;
    A[3]=0;
    B[3]=0;
    #10;
    A[0]=0;
    B[0]=0;
    A[1]=0;
    B[1]=0;
    A[2]=0;
    B[2]=0;
    A[3]=1;
    B[3]=1;                    
    end    
endmodule
