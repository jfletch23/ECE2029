`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 09:50:00 AM
// Design Name: 
// Module Name: MajorityTestBench
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


module MajorityTestBench(

    );
    reg A;
    reg B;
    reg C;
    wire Y;
    Majority dut(.A(A),.B(B),.C(C),.Y(Y));
    initial begin
    A=0;
    B=0;
    C=0;
    #10;
    A=0;
    B=0;
    C=1;
    #10;
        
    A=0;
    B=1;
    C=0;
    #10;
    A=0;
    B=1;
    C=1;
    #10;
    
    
    A=1;
    B=0;
    C=0;
    #10;
    A=1;
    B=0;
    C=1;
    #10;
        
    A=1;
    B=1;
    C=0;
    #10;
    A=1;
    B=1;
    C=1;
    end
endmodule
