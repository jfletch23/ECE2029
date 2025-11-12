`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 03:06:09 PM
// Design Name: 
// Module Name: QuestionTwoDesignSource
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


module QuestionTwoDesignSource(
    input [3:0]A,
    input [3:0]B,
    //input M,
    output [3:0]s,
    output Carry,
    output [3:0]BCD
    );
    //wire [3:0]s;
    wire [3:0]c;
    wire [3:0]otherCarry;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    QuestionOneDesignSource f1(.X(A[0]),.Y(B[0]),.Z(1'b0),.Sum(s[0]),.Carry(c[0]));
    QuestionOneDesignSource f2(.X(A[1]),.Y(B[1]),.Z(c[0]),.Sum(s[1]),.Carry(c[1]));
    QuestionOneDesignSource f3(.X(A[2]),.Y(B[2]),.Z(c[1]),.Sum(s[2]),.Carry(c[2]));
    QuestionOneDesignSource f4(.X(A[3]),.Y(B[3]),.Z(c[2]),.Sum(s[3]),.Carry(c[3]));
    assign Carry = c[3]; //if greater than 10
    QuestionOneDesignSource f5(.X(s[0]),.Y(1'b0),.Z(1'b0),.Sum(BCD[0]),.Carry(otherCarry[0]));
    QuestionOneDesignSource f6(.X(s[1]),.Y(Carry),.Z(otherCarry[0]),.Sum(BCD[1]),.Carry(otherCarry[1]));
    QuestionOneDesignSource f7(.X(s[2]),.Y(Carry),.Z(otherCarry[1]),.Sum(BCD[2]),.Carry(otherCarry[2]));
    QuestionOneDesignSource f8(.X(s[3]),.Y(1'b0),.Z(otherCarry[2]),.Sum(BCD[3]),.Carry(otherCarry[3]));
    //assign BCD[0] = (Carry & s[0]-6) | (~Carry & s[0]);
    //assign BCD[1] = (Carry & s[1]-6) | (~Carry & s[1]); 
    //assign BCD[2] = (Carry & s[2]-6) | (~Carry & s[2]); 
    //assign BCD[3] = (Carry & s[3]-6) | (~Carry & s[3]);  
endmodule
