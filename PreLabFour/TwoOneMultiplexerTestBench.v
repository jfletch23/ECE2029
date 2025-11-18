`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 02:56:05 AM
// Design Name: 
// Module Name: TwoOneMultiplexerTestBench
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


module TwoOneMultiplexerTestBench(

    );
    reg S;
    reg [1:0]D;
    wire Y;
    TwoOneMultiplexer dut(.S(S),.D(D),.Y(Y));
    initial begin
    S=0;
    D[0]=0;
    D[1]=0;
    #10;
    S=0;
    D[0]=0;
    D[1]=1;
    #10;
    S=0;
    D[0]=1;
    D[1]=0;
    #10;
    S=0;
    D[0]=1;
    D[1]=1;
    #10;
    S=1;
    D[0]=0;
    D[1]=0;
    #10;
    S=1;
    D[0]=0;
    D[1]=1;
    #10;
    S=1;
    D[0]=1;
    D[1]=0;
    #10;
    S=1;
    D[0]=1;
    D[1]=1;
    end
endmodule
