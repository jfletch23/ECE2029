`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 03:10:53 AM
// Design Name: 
// Module Name: FourOneMultiplexerTestBench
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


module FourOneMultiplexerTestBench(

    );
    //Standard stuff of having my inputs be registers and outputs be wires
    //See design source for why I'm not using a bus
    reg A;
    reg B;
    reg C;
    reg D;
    reg [1:0]S;
    wire Y;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    FourOneMultiplexer dut(.A(A),.B(B),.C(C),.D(D),.S(S),.Y(Y));
    //Since I have 6 inputs I have a lot of combinations but I really justt need to test for 2 inputs
    //(the selection bits) since as long as 1 output is different than the rest I can test it is being selected
    initial begin
    S[0] = 0;
    S[1] = 0;
    A = 1;
    B = 0;
    C = 0;
    D = 0;
    #10;
    S[0] = 0;
    S[1] = 1;
    A = 0;
    B = 0;
    C = 1;
    D = 0;
    #10;
    S[0] = 1;
    S[1] = 0;
    A = 0;
    B = 1;
    C = 0;
    D = 0;
    #10;
    S[0] = 1;
    S[1] = 1;
    A = 0;
    B = 0;
    C = 0;
    D = 1;
    end
endmodule
