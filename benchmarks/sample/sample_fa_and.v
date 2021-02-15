module FA(A, B, Cin, S, Cout);

input A, B, Cin;
output S, Cout;

wire n1, n2, n3, n4, n5, n6, n7;

nor gn1(n1, A, Cin);
nor gn2(n2, Cin, Cin);
nor gn3(n3, A, A);
nor gn4(n4, n2, n3);
nor gn5(n5, B, n4);
nor gn6(n6, B, B);
nor gn7(n7, n4, n4);
nor gn8(S, n6, n7);
nor gn9(Cout, n1, n5);

endmodule

