`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 08:37:17 AM
// Design Name: 
// Module Name: TwoFourDecoderTestBench
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


module TwoFourDecoderTestBench(

    );
    reg A;
    reg B;
    wire [3:0]Y;
    TwoFourDecoder dut(.A(A),.B(B),.Y(Y));
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
