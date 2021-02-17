module MyAnd(A, B, C, D, E);

input A, B, C;
output D, E;
wire w1, w2, w3, w4, w5;

and AND1(w1, A, B);
and AND2(w3, w2, w4);
and AND3(E, w5, B);

assign w4 = C;
assign w2 = w1;
assign D = w3;
assign w5 = w3;

endmodule

