`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 02:52:24 AM
// Design Name: 
// Module Name: TwoOneMultiplexer
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


module TwoOneMultiplexer(
    //Selection input
    input S,
    //Not using a bus for the two inputs because my final product requires me to specify inputs differently
    input D0,
    input D1,
    output Y
    );
    //A 2x1 multiplexer is just two AND gates and an OR gate (plus a NOT gate for the selection input)
    assign Y = (S&D1) | ((~S)&D0);
endmodule
