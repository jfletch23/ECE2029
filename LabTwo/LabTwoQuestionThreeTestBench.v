`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2025 03:32:59 PM
// Design Name: 
// Module Name: LabTwoQuestionThreeTestBench
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


module LabTwoQuestionThreeTestBench(

    );
    LabTwoQuestionThreeDesignSource dut(X,Y,S,C);
    reg X;
    reg Y;
    wire S;
    wire C;
    initial begin
    X=0;
    Y=0;
    #10;
    X=0;
    Y=1;
    #10;
    X=1;
    Y=0;
    #10;
    X=1;
    Y=1;
    end
endmodule
