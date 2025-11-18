`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 02:05:15 AM
// Design Name: 
// Module Name: TwoFourDecoder
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


module TwoFourDecoder(
    //2 inputs and 4 outputs per decoder specifications
    input A,
    input B,
    //Using a bus for 4 outputs instead of typing out 4 lines of code
    output [3:0]Y
    );
    //Basically each output is assigned a minterm to make the decoder
    //Y[0] will be 1 if input is 0,0
    //Y[1] will be 1 if input is 0,1
    //Y[2] will be 1 if input is 1,0
    //Lastly Y[3] will be 1 if input is 1,1
    //Per how a decoder works only 1 output can be high at once
    assign Y[0] = (~A)&(~B);
    assign Y[1] = (~A)&B;
    assign Y[2] = A&(~B);
    assign Y[3] = A&B;
endmodule
