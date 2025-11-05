`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2025 04:24:49 PM
// Design Name: 
// Module Name: LabTwoQuestionFourTestBench
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


module LabTwoQuestionFourTestBench(

    );
    LabTwoQuestionFourDesignSource dut(.X(X),.Y(Y),.Z(Z),.C(C),.S(S));
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
