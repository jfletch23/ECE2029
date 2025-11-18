`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 02:32:43 AM
// Design Name: 
// Module Name: FullAdderTestBench
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


module FullAdderTestBench(

    );
    //Again just standard stuff of defining my registers as my inputs and wires as my outputs
    reg X;
    reg Y;
    reg Z;
    wire S;
    wire C;
    //Instantiate the full adder
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    FullAdder dut(.X(X),.Y(Y),.Z(Z),.S(S),.C(C));
    //Have 3 inputs therefore 8 test cases from 2^3
    initial begin
    X=0;
    Y=0;
    Z=0;
    #10;
    X=0;
    Y=0;
    Z=1;
    #10;
    X=0;
    Y=1;
    Z=0;
    #10;
    X=0;
    Y=1;
    Z=1;
    #10;
    X=1;
    Y=0;
    Z=0;
    #10;
    X=1;
    Y=0;
    Z=1;
    #10;
    X=1;
    Y=1;
    Z=0;
    #10;
    X=1;
    Y=1;
    Z=1;
    end
endmodule
