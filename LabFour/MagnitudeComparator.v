`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 08:20:39 AM
// Design Name: 
// Module Name: MagnitudeComparator
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


module MagnitudeComparator(
    input [1:0]A,
    input [1:0]B,
    output G,
    output E,
    output L
    );
    wire [3:0]firstOutput;
    wire [3:0]secondOutput;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    TwoFourDecoder d1(.A(A[0]),.B(A[1]),.Y(firstOutput));
    TwoFourDecoder d2(.A(B[0]),.B(B[1]),.Y(secondOutput));
    wire GCaseOne = (firstOutput[3] & (secondOutput[0] | secondOutput[1] | secondOutput[2]));
    wire GCaseTwo = (firstOutput[2] & secondOutput[0]);
    wire GCaseThree = (firstOutput[1] & (secondOutput[0] | secondOutput[2]));
    
    wire LCaseOne = (secondOutput[3] & (firstOutput[0] | firstOutput[1] | firstOutput[2]));
    wire LCaseTwo = (secondOutput[2] & (firstOutput[0]));
    wire LCaseThree = (secondOutput[1] & (firstOutput[0] | firstOutput[2])); 
    
    assign G = GCaseOne | GCaseTwo | GCaseThree;
    assign L = LCaseOne | LCaseTwo | LCaseThree;
    assign E = (firstOutput[0] & secondOutput[0]) | (firstOutput[1] & secondOutput[1]) | (firstOutput[2] & secondOutput[2]) | (firstOutput[3] & secondOutput[3]);
endmodule
