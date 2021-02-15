module MyXor(A, B, O);

input A, B;
output O;

wire w1, w2, w3;

nand NAND1(w1, A, B);
nand NAND2(w2, w1, A);
nand NAND3(w3, w1, B);
nand NAND4(O, w2, w3);

endmodule

