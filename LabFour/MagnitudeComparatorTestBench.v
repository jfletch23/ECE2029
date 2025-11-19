`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 08:25:17 AM
// Design Name: 
// Module Name: MagnitudeComparatorTestBench
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


module MagnitudeComparatorTestBench(

    );
    reg [1:0]A;
    reg [1:0]B;
    wire G;
    wire L;
    wire E;
    //wire [3:0]firstOutput;
    //wire [3:0]secondOutput;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    MagnitudeComparator dut(.A(A),.B(B),.G(G),.E(E),.L(L));
    //MagnitudeComparator dut(.A(A),.B(B),.firstOutput(firstOutput),.secondOutput(secondOutput));
    initial begin
    A[0] = 0;
    A[1] = 0;
    B[0] = 0;
    B[1] = 0;
    #10;
    A[0] = 0;
    A[1] = 0;
    B[0] = 0;
    B[1] = 1;
    #10;
    A[0] = 0;
    A[1] = 0;
    B[0] = 1;
    B[1] = 0;
    #10;
    A[0] = 0;
    A[1] = 0;
    B[0] = 1;
    B[1] = 1;
    #10;
    A[0] = 0;
    A[1] = 1;
    B[0] = 0;
    B[1] = 0;
    #10;
    A[0] = 0;
    A[1] = 1;
    B[0] = 0;
    B[1] = 1;
    #10;
    A[0] = 0;
    A[1] = 1;
    B[0] = 1;
    B[1] = 0;
    #10;
    A[0] = 0;
    A[1] = 1;
    B[0] = 1;
    B[1] = 1;
    #10;
    
    A[0] = 1;
    A[1] = 0;
    B[0] = 0;
    B[1] = 0;
    #10;
    A[0] = 1;
    A[1] = 0;
    B[0] = 0;
    B[1] = 1;
    #10;
    A[0] = 1;
    A[1] = 0;
    B[0] = 1;
    B[1] = 0;
    #10;
    A[0] = 1;
    A[1] = 0;
    B[0] = 1;
    B[1] = 1;
    #10;
    A[0] = 1;
    A[1] = 1;
    B[0] = 0;
    B[1] = 0;
    #10;
    A[0] = 1;
    A[1] = 1;
    B[0] = 0;
    B[1] = 1;
    #10;
    A[0] = 1;
    A[1] = 1;
    B[0] = 1;
    B[1] = 0;
    #10;
    A[0] = 1;
    A[1] = 1;
    B[0] = 1;
    B[1] = 1;
    end

        
     
endmodule
