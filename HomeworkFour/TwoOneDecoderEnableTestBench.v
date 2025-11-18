`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2025 11:56:00 PM
// Design Name: 
// Module Name: TwoOneDecoderEnableTestBench
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


module TwoOneDecoderEnableTestBench(

    );
    reg A;
    reg B;
    reg E;
    wire [3:0]Y;
    
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    TwoOneDecoderEnable dut(.A(A),.B(B),.E(E),.Y(Y));
    initial begin
    A=0;
    B=0;
    E=0;
    #10;
    A=0;
    B=1;
    E=0;
    #10;
    A=1;
    B=0;
    E=0;
    #10;
    A=1;
    B=1;
    E=0;
    #10;
    A=0;
    B=0;
    E=1;
    #10;
    A=0;
    B=1;
    E=1;
    #10;
    A=1;
    B=0;
    E=1;
    #10;
    A=1;
    B=1;
    E=1;
    end
endmodule
