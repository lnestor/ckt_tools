module MyXor(A, B, O);

input A, B;
output O;

wire w1, w2, w3, w4;

nor NOR1(w1, A, B);
nor NOR2(w2, w1, A);
nor NOR3(w3, w1, B);
nor NOR4(w4, w2, w3);
nor NOR5(O, w4, w4);

endmodule

