`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 02:16:25 AM
// Design Name: 
// Module Name: ThreeEightDecoderTestBench
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


module ThreeEightDecoderTestBench(

    );
    //Just standard stuff, defining inputs as registers and outputs as wires
    reg A;
    reg B;
    reg E;
    wire [3:0]Y;
    wire [3:0]Z;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    ThreeEightDecoder dut(.A(A),.B(B),.E(E),.Y(Y),.Z(Z));
    //Have 8 test cases (2^3) since I have 3 inputs
    initial begin
    A=0;
    B=0;
    E=0;
    #10;
    A=0;
    B=0;
    E=1;
    #10;
    A=0;
    B=1;
    E=0;
    #10;
    A=0;
    B=1;
    E=1;
    #10;
    A=1;
    B=0;
    E=0;
    #10;
    A=1;
    B=0;
    E=1;
    #10;
    A=1;
    B=1;
    E=0;
    #10;
    A=1;
    B=1;
    E=1;
    end
endmodule
