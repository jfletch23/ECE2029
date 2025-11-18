`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 02:26:09 AM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
    //Since this is a FullAdder it is 3 bits of input with a Sum and Carry output
    input X,
    input Y,
    input Z,
    output S,
    output C
    );
    //Need two internal wires to store the output from the decoder to then pass through two OR gates
    wire [3:0]Q;
    wire [3:0]R;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    ThreeEightDecoder d1(.A(X),.B(Y),.E(Z),.Y(Q),.Z(R));
    //Gonna be honest I don't really know where the logic comes from to OR these outputs
    //I'm just following the diagram from the slides
    assign S = Q[1] | Q[2] | R[0] | R[3];
    assign C = Q[3] | R[1] | R[2] | R[3];
endmodule
