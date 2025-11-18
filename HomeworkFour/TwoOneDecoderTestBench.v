`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2025 11:45:28 PM
// Design Name: 
// Module Name: TwoOneDecoderTestBench
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


module TwoOneDecoderTestBench(

    );
    reg A;
    reg B;
    wire [3:0]Y;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    TwoOneDecoder dut(.A(A),.B(B),.Y(Y));
    initial begin
    A=0;
    B=0;
    #10;
    A=0;
    B=1;
    #10;
    A=1;
    B=0;
    #10;
    A=1;
    B=1;
    end
endmodule
