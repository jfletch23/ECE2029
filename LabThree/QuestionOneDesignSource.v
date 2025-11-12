`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 01:57:26 PM
// Design Name: 
// Module Name: QuestionOneDesignSource
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


module QuestionOneDesignSource(
    input X,
    input Y,
    input Z,
    output Sum,
    output Carry
    );
    
    wire s1;
    wire c1; 
    wire c2;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    halfAdder h1(.X(X),.Y(Y),.S(s1),.C(c1));
    halfAdder h2(.X(s1),.Y(Z),.S(Sum),.C(c2));
    assign Carry = c1 | c2;
    
endmodule
