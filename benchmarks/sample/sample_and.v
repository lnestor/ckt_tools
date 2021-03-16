module MyAnd(A, B, C, D);

input A, B, C;
output D;
wire w1;

and AND1(w1, A, B);
and AND2(D, w1, C);

endmodule

