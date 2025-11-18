`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 12:06:24 AM
// Design Name: 
// Module Name: FourSixteenDecoderTestBench
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


module FourSixteenDecoderTestBench(

    );
    reg A;
    reg B;
    reg C;
    reg D;
    wire [3:0]W;
    wire [3:0]X;
    wire [3:0]Y;
    wire [3:0]Z;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    FourSixteenDecoder dut(.A(A),.B(B),.C(C),.D(D),.W(W),.X(X),.Y(Y),.Z(Z));
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
