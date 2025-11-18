`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 03:01:20 AM
// Design Name: 
// Module Name: FourOneMultiplexer
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


module FourOneMultiplexer(
    //Have 4 inputs for multiplexer, per the specification
    //Again not using a bus because in the next step I need to set C and D differently
    input A,
    input B,
    input C,
    input D,
    //Need two signal inputs for this multiplexer so using a bus
    input [1:0]S,
    output Y
    );
    //Need internal wire for output to connect output from two multiplexers to third multiplexer
    wire [1:0]out;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    //First two multiplexers take in same selection bit, last multiplexer takes in other selection bit
    TwoOneMultiplexer m1(.S(S[0]),.D0(A),.D1(B),.Y(out[0]));
    TwoOneMultiplexer m2(.S(S[0]),.D0(C),.D1(D),.Y(out[1]));
    TwoOneMultiplexer m3(.S(S[1]),.D0(out[0]),.D1(out[1]),.Y(Y));
endmodule
