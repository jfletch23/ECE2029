`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 09:45:35 AM
// Design Name: 
// Module Name: Majority
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


module Majority(
    input A,
    input B,
    input C,
    output Y
    );
    wire [3:0]firstOutput;
    wire [3:0]secondOutput;
    wire [3:0]thirdOutput;
    TwoFourDecoder d1(.A(A),.B(B),.Y(firstOutput));
    TwoFourDecoder d2(.A(B),.B(C),.Y(secondOutput));
    TwoFourDecoder d3(.A(A),.B(C),.Y(thirdOutput));
    wire caseOne;
    wire caseTwo;
    wire caseThree;
    wire caseFour;
    assign caseOne = firstOutput[1] & secondOutput[3] & thirdOutput[1];
    assign caseTwo = firstOutput[2] & secondOutput[1] & thirdOutput[3];
    assign caseThree = firstOutput[3] & secondOutput[2] & thirdOutput[2];
    assign caseFour = firstOutput[3] & secondOutput[3] & thirdOutput[3];
    
    assign Y = caseOne | caseTwo | caseThree |  caseFour;
endmodule
