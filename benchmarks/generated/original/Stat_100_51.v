// Benchmark C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\4_6_generated_stats\Stat_100_51 written by SynthGen on 2021/04/05 11:08:38
module C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\4_6_generated_stats\Stat_100_51 ( n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32,
 n129, n105, n102, n114, n120, n106, n119, n117,
 n108, n109, n124, n132, n103, n131, n116, n123,
 n104, n121, n111, n113, n125, n127, n122, n110,
 n130, n115, n118, n126, n112, n101, n128, n107);

input n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32;

output n129, n105, n102, n114, n120, n106, n119, n117,
 n108, n109, n124, n132, n103, n131, n116, n123,
 n104, n121, n111, n113, n125, n127, n122, n110,
 n130, n115, n118, n126, n112, n101, n128, n107;

wire n33, n34, n35, n36, n37, n38, n39, n40,
 n41, n42, n43, n44, n45, n46, n47, n48,
 n49, n50, n51, n52, n53, n54, n55, n56,
 n57, n58, n59, n60, n61, n62, n63, n64,
 n65, n66, n67, n68, n69, n70, n71, n72,
 n73, n74, n75, n76, n77, n78, n79, n80,
 n81, n82, n83, n84, n85, n86, n87, n88,
 n89, n90, n91, n92, n93, n94, n95, n96,
 n97, n98, n99, n100;

buf  g0 (n41, n22);
and  g1 (n36, n24, n31, n5, n19);
xnor g2 (n39, n26, n20, n16, n1);
and  g3 (n37, n4, n2, n17, n21);
xor  g4 (n35, n29, n9, n15, n8);
xor  g5 (n40, n11, n6, n3, n30);
and  g6 (n33, n28, n27, n18, n31);
xor  g7 (n38, n14, n10, n7, n23);
or   g8 (n34, n13, n12, n31, n25);
not  g9 (n43, n35);
not  g10 (n46, n36);
not  g11 (n49, n37);
buf  g12 (n45, n40);
not  g13 (n48, n39);
buf  g14 (n42, n33);
buf  g15 (n47, n34);
buf  g16 (n44, n38);
not  g17 (n65, n46);
buf  g18 (n68, n44);
buf  g19 (n76, n42);
buf  g20 (n64, n43);
buf  g21 (n75, n45);
not  g22 (n57, n47);
buf  g23 (n67, n43);
buf  g24 (n77, n46);
buf  g25 (n56, n41);
not  g26 (n52, n44);
buf  g27 (n66, n44);
buf  g28 (n62, n47);
buf  g29 (n55, n46);
not  g30 (n54, n46);
buf  g31 (n51, n45);
buf  g32 (n53, n49);
buf  g33 (n78, n49);
not  g34 (n73, n42);
buf  g35 (n50, n47);
not  g36 (n61, n43);
not  g37 (n70, n42);
buf  g38 (n59, n48);
buf  g39 (n63, n45);
buf  g40 (n60, n42);
not  g41 (n74, n44);
not  g42 (n58, n48);
not  g43 (n71, n48);
buf  g44 (n72, n45);
not  g45 (n69, n32);
nand g46 (n79, n32, n48, n43, n47);
not  g47 (n93, n54);
not  g48 (n89, n51);
buf  g49 (n86, n32);
buf  g50 (n90, n55);
buf  g51 (n82, n49);
buf  g52 (n92, n50);
not  g53 (n96, n52);
buf  g54 (n100, n54);
buf  g55 (n81, n54);
buf  g56 (n83, n52);
not  g57 (n87, n53);
not  g58 (n85, n55);
buf  g59 (n95, n50);
buf  g60 (n80, n49);
buf  g61 (n97, n53);
not  g62 (n94, n51);
not  g63 (n98, n55);
buf  g64 (n91, n52);
not  g65 (n84, n53);
buf  g66 (n99, n51);
xor  g67 (n88, n55, n50, n53, n54);
and  g68 (n109, n93, n70, n99, n79);
nor  g69 (n119, n60, n77, n64, n73);
nand g70 (n124, n63, n68, n56, n82);
or   g71 (n107, n60, n67, n78, n62);
xor  g72 (n122, n65, n56, n99, n76);
or   g73 (n132, n74, n96, n67, n57);
xor  g74 (n111, n69, n62, n74, n98);
xor  g75 (n108, n71, n58, n99, n62);
xor  g76 (n102, n61, n71, n75, n64);
or   g77 (n114, n67, n75, n87, n79);
xnor g78 (n123, n59, n77, n96, n71);
xor  g79 (n110, n97, n76, n57, n78);
nor  g80 (n117, n63, n66, n62, n98);
and  g81 (n127, n76, n65, n75, n66);
and  g82 (n106, n64, n97, n70, n84);
and  g83 (n130, n89, n59, n58, n69);
or   g84 (n116, n85, n100, n61, n57);
nor  g85 (n128, n98, n61, n88, n97);
nand g86 (n131, n91, n90, n58, n56);
nor  g87 (n121, n94, n68, n67, n78);
nor  g88 (n105, n70, n81, n68, n71);
and  g89 (n104, n78, n72, n77, n92);
nand g90 (n113, n66, n69, n73, n79);
xnor g91 (n101, n69, n59, n58, n68);
xor  g92 (n103, n100, n60, n63);
xor  g93 (n129, n95, n57, n66, n74);
and  g94 (n118, n70, n61, n86, n73);
nand g95 (n115, n65, n83, n79, n100);
xor  g96 (n112, n64, n72, n77, n73);
xor  g97 (n126, n63, n56, n75, n59);
xor  g98 (n125, n80, n95, n72, n74);
xor  g99 (n120, n76, n72, n96, n65);
endmodule
