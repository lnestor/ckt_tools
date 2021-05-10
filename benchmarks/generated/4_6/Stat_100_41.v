// Benchmark C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\4_6_generated_stats\Stat_100_41 written by SynthGen on 2021/04/05 11:08:36
module C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\4_6_generated_stats\Stat_100_41 ( n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32,
 n112, n131, n117, n108, n125, n121, n130, n118,
 n102, n116, n110, n124, n128, n122, n114, n104,
 n109, n113, n123, n101, n127, n105, n119, n103,
 n120, n106, n132, n129, n107, n126, n111, n115);

input n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32;

output n112, n131, n117, n108, n125, n121, n130, n118,
 n102, n116, n110, n124, n128, n122, n114, n104,
 n109, n113, n123, n101, n127, n105, n119, n103,
 n120, n106, n132, n129, n107, n126, n111, n115;

wire n33, n34, n35, n36, n37, n38, n39, n40,
 n41, n42, n43, n44, n45, n46, n47, n48,
 n49, n50, n51, n52, n53, n54, n55, n56,
 n57, n58, n59, n60, n61, n62, n63, n64,
 n65, n66, n67, n68, n69, n70, n71, n72,
 n73, n74, n75, n76, n77, n78, n79, n80,
 n81, n82, n83, n84, n85, n86, n87, n88,
 n89, n90, n91, n92, n93, n94, n95, n96,
 n97, n98, n99, n100;

not  g0 (n40, n4);
not  g1 (n39, n2);
not  g2 (n34, n3);
buf  g3 (n42, n3);
buf  g4 (n35, n2);
not  g5 (n41, n1);
buf  g6 (n37, n3);
not  g7 (n38, n4);
buf  g8 (n36, n1);
not  g9 (n43, n1);
buf  g10 (n33, n2);
not  g11 (n44, n4);
not  g12 (n59, n13);
buf  g13 (n66, n15);
buf  g14 (n76, n27);
not  g15 (n72, n8);
not  g16 (n51, n31);
not  g17 (n73, n33);
buf  g18 (n71, n31);
not  g19 (n75, n19);
or   g20 (n61, n11, n21, n18, n42);
nor  g21 (n64, n22, n41, n36, n18);
nand g22 (n78, n35, n17, n25, n20);
nand g23 (n45, n37, n39, n42, n43);
nor  g24 (n80, n22, n19, n35, n44);
or   g25 (n74, n18, n13, n7, n28);
xor  g26 (n60, n43, n30, n39, n38);
xor  g27 (n49, n29, n24, n6, n26);
nor  g28 (n65, n40, n14, n9, n11);
and  g29 (n50, n7, n16, n10, n19);
or   g30 (n58, n9, n35, n16, n42);
and  g31 (n69, n29, n41, n37, n20);
and  g32 (n53, n37, n44, n23, n27);
nand g33 (n63, n32, n25, n34, n5);
and  g34 (n52, n14, n38, n44, n8);
xor  g35 (n55, n9, n23, n22, n15);
and  g36 (n70, n17, n6, n33, n43);
nand g37 (n47, n12, n24, n5, n26);
or   g38 (n79, n24, n16, n32, n13);
and  g39 (n48, n29, n11, n7, n26);
nand g40 (n46, n30, n36, n40, n6);
nor  g41 (n56, n30, n39, n21, n10);
nand g42 (n54, n25, n10, n41, n31);
nand g43 (n67, n14, n15, n5, n8);
nor  g44 (n57, n38, n27, n36, n32);
and  g45 (n68, n17, n34, n33, n20);
xor  g46 (n77, n28, n23, n12, n40);
xor  g47 (n62, n34, n21, n12, n28);
buf  g48 (n96, n45);
not  g49 (n84, n49);
buf  g50 (n81, n48);
buf  g51 (n92, n45);
buf  g52 (n83, n46);
buf  g53 (n91, n48);
buf  g54 (n85, n46);
not  g55 (n90, n50);
buf  g56 (n82, n50);
buf  g57 (n89, n49);
buf  g58 (n94, n51);
not  g59 (n88, n51);
buf  g60 (n86, n48);
buf  g61 (n100, n50);
not  g62 (n98, n46);
buf  g63 (n93, n45);
buf  g64 (n87, n47);
not  g65 (n97, n47);
not  g66 (n99, n47);
not  g67 (n95, n49);
or   g68 (n120, n97, n64, n98, n70);
xnor g69 (n102, n60, n80, n95);
or   g70 (n125, n78, n74, n71, n77);
or   g71 (n130, n57, n63, n69, n99);
xnor g72 (n121, n88, n56, n72, n58);
or   g73 (n128, n70, n91, n94, n60);
or   g74 (n113, n71, n54, n51, n59);
nand g75 (n115, n86, n94, n62);
nand g76 (n129, n82, n75, n52, n61);
and  g77 (n112, n62, n85, n54, n75);
xor  g78 (n108, n59, n79, n68, n91);
xor  g79 (n114, n69, n92, n53, n65);
xor  g80 (n119, n83, n91, n60, n68);
nand g81 (n104, n74, n72, n89, n65);
xor  g82 (n105, n68, n64, n81, n92);
xnor g83 (n110, n53, n92, n99, n98);
or   g84 (n101, n56, n56, n61, n66);
nand g85 (n106, n65, n99, n93, n74);
nand g86 (n118, n73, n55, n78, n76);
xnor g87 (n123, n95, n87, n71, n55);
nor  g88 (n107, n97, n70, n84, n79);
nor  g89 (n103, n58, n77, n66, n52);
nand g90 (n122, n63, n80, n59, n93);
nand g91 (n109, n64, n72, n100, n57);
nor  g92 (n126, n58, n67, n73, n66);
xor  g93 (n117, n100, n73, n80, n96);
and  g94 (n124, n54, n67, n90, n61);
xnor g95 (n111, n76, n75, n52, n53);
or   g96 (n132, n67, n93, n96, n78);
or   g97 (n131, n98, n96, n94, n79);
nor  g98 (n116, n69, n97, n57, n100);
or   g99 (n127, n55, n76, n63, n77);
endmodule
