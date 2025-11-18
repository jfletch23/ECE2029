`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 03:29:29 AM
// Design Name: 
// Module Name: ImplementFunctionTestBench
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


module ImplementFunctionTestBench(

    );
    //Standard stuff of setting up inputs as registers and output as a wire
    reg [1:0]S;
    reg Z;
    wire F;
    ImplementFunction dut(.S(S),.Z(Z),.F(F));
    initial begin
    S[0] = 0;
    S[1] = 0;
    Z = 0;
    #10;
    S[0] = 0;
    S[1] = 0;
    Z = 1;
    #10;
    S[0] = 0;
    S[1] = 1;
    Z = 0;
    #10;
    S[0] = 0;
    S[1] = 1;
    Z = 1;
    #10;
    S[0] = 1;
    S[1] = 0;
    Z = 0;
    #10;
    S[0] = 1;
    S[1] = 0;
    Z = 1;
    #10;
    S[0] = 1;
    S[1] = 1;
    Z = 0;
    #10;
    S[0] = 1;
    S[1] = 1;
    Z = 1;
    end
endmodule
