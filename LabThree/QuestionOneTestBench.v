`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 01:58:26 PM
// Design Name: 
// Module Name: QuestionOneTestBench
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


module QuestionOneTestBench(

    );
    
    QuestionOneDesignSource dut(.X(X),.Y(Y),.Z(Z),.Carry(C),.Sum(S));
    reg X;
    reg Y;
    reg Z;
    wire C;
    wire S;
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
