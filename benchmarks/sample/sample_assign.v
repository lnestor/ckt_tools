module MyAnd(A, B, C, D);

input A, B, C;
output D;
wire w1, w2, w3, w4;

and AND1(w1, A, B);
and AND1(w3, w2, w4);

assign w4 = C;
assign w2 = w1;
assign D = w3;

endmodule

