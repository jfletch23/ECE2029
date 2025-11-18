`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 12:17:13 AM
// Design Name: 
// Module Name: DotMatrix
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


module DotMatrix(
    input W,
    input X,
    input Y,
    input Z,
    output [2:0]A,
    output [2:0]B,
    output [2:0]C,
    output [2:0]D,
    output [2:0]E
    );
    wire [3:0] Q;
    wire [3:0] R;
    wire [3:0] S;
    wire [3:0] T;
    //In the parenthesis is from the current file
    //Next to the period is from the referenced file
    FourSixteenDecoder d1(.A(W),.B(X),.C(Y),.D(Z),.W(Q),.X(R),.Y(S),.Z(T));
    assign A[0] = Q[0] | Q[2] | Q[3] | R[0] | R[1] | R[2] | R[3] | S[0] | S[1];
    assign A[1] = Q[0] | Q[1] | Q[2] | Q[3] | R[1] | R[2] | R[3] | S[0] | S[1];
    assign A[2] = Q[0] | Q[2] | Q[3] | R[0] | R[1] | R[2] | R[3] | S[0] | S[1];
    
    assign B[0] = Q[0] | Q[1] | R[0] | R[1] | R[2] | S[0] | S[1] | T[1];
    assign B[1] = Q[1] | S[3];
    assign B[2] = Q[0] | Q[2] | Q[3] | R[0] | R[3] | S[0] | S[1] | T[1];
    
    assign C[0] = Q[0] | Q[2] | Q[3] | R[0] | R[1] | R[2] | S[0] | S[1] | S[3] | T[0];
    assign C[1] = Q[1] | Q[2] | Q[3] | R[0] | R[1] | R[2] | S[0] | S[1] | S[3] | T[0] | T[1] | T[2];
    assign C[2] = Q[0] | Q[2] | Q[3] | R[0] | R[1] | R[2] | R[3] | S[0] | S[1] | S[3] | T[0];
    
    assign D[0] = Q[0] | Q[2] | R[2] | S[0] | T[1];
    assign D[1] = Q[1] | S[3];
    assign D[2] = Q[0] | Q[3] | R[0] | R[1] | R[2] | R[3] | S[0] | S[1] | T[1];
    
    assign E[0] = Q[0] | Q[1] | Q[2] | Q[3] | R[1] | R[2] | S[0] | S[1] | T[3];
    assign E[1] = Q[0] | Q[1] | Q[2] | Q[3] | R[1] | R[2] | S[0] | S[1] | S[2] | T[3];
    assign E[2] = Q[0] | Q[1] | Q[2] | Q[3] | R[0] | R[1] | R[2] | R[3] | S[0] | S[1] | T[3];  
    
endmodule
