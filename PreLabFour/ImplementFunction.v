`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 03:24:28 AM
// Design Name: 
// Module Name: ImplementFunction
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


module ImplementFunction(
    //Implemented function by converting it to a truth table and then grouping into pairs and determining what to
    //input into multiplexer based on those pairs (was going to be Z, ~Z, 0, or 1)
    //Selection bits are technically X and Y
    input [1:0]S,
    input Z,
    output F
    );
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    //This is why I couldn't use buses, I need each input to be individual so I can pass in 1 and 0 separately
    FourOneMultiplexer m1(.A(~Z),.B(1),.C(~Z),.D(0),.S(S),.Y(F));
endmodule
