// Benchmark C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\4_6_generated_stats\Stat_100_63 written by SynthGen on 2021/04/05 11:22:47
module Stat_100_63( n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32,
 n43, n115, n88, n103, n96, n97, n80, n100,
 n66, n77, n102, n75, n65, n111, n78, n95,
 n82, n106, n129, n123, n121, n119, n124, n125,
 n120, n122, n127, n126, n128, n132, n131, n130);

input n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32;

output n43, n115, n88, n103, n96, n97, n80, n100,
 n66, n77, n102, n75, n65, n111, n78, n95,
 n82, n106, n129, n123, n121, n119, n124, n125,
 n120, n122, n127, n126, n128, n132, n131, n130;

wire n33, n34, n35, n36, n37, n38, n39, n40,
 n41, n42, n44, n45, n46, n47, n48, n49,
 n50, n51, n52, n53, n54, n55, n56, n57,
 n58, n59, n60, n61, n62, n63, n64, n67,
 n68, n69, n70, n71, n72, n73, n74, n76,
 n79, n81, n83, n84, n85, n86, n87, n89,
 n90, n91, n92, n93, n94, n98, n99, n101,
 n104, n105, n107, n108, n109, n110, n112, n113,
 n114, n116, n117, n118;

not  g0 (n35, n1);
buf  g1 (n36, n2);
buf  g2 (n33, n1);
not  g3 (n37, n1);
buf  g4 (n38, n1);
not  g5 (n34, n2);
not  g6 (n40, n37);
not  g7 (n41, n37);
buf  g8 (n42, n2);
buf  g9 (n43, n3);
nand g10 (n39, n2, n36);
not  g11 (n44, n43);
buf  g12 (n46, n40);
buf  g13 (n47, n41);
not  g14 (n45, n42);
buf  g15 (n61, n44);
buf  g16 (n58, n44);
buf  g17 (n59, n4);
not  g18 (n50, n5);
buf  g19 (n56, n47);
buf  g20 (n54, n45);
buf  g21 (n49, n4);
buf  g22 (n63, n46);
buf  g23 (n55, n6);
buf  g24 (n62, n3);
buf  g25 (n52, n46);
buf  g26 (n53, n46);
nor  g27 (n60, n45, n4, n5, n46);
nor  g28 (n57, n45, n47, n44);
xnor g29 (n48, n44, n5, n3, n4);
or   g30 (n51, n47, n45, n5, n3);
not  g31 (n110, n9);
buf  g32 (n100, n7);
buf  g33 (n80, n59);
buf  g34 (n108, n52);
not  g35 (n117, n26);
not  g36 (n73, n23);
buf  g37 (n94, n19);
not  g38 (n86, n50);
buf  g39 (n75, n38);
not  g40 (n97, n20);
not  g41 (n107, n60);
not  g42 (n72, n6);
not  g43 (n68, n9);
buf  g44 (n115, n8);
not  g45 (n81, n28);
xor  g46 (n66, n20, n61, n10);
xnor g47 (n105, n8, n14, n18, n28);
nor  g48 (n88, n57, n56, n58, n31);
xnor g49 (n67, n51, n56, n11, n13);
xnor g50 (n84, n18, n61, n27, n60);
nand g51 (n103, n53, n18, n62);
and  g52 (n79, n14, n48, n31, n7);
xor  g53 (n89, n28, n57, n60, n49);
nor  g54 (n95, n16, n32, n15, n57);
nor  g55 (n118, n26, n12, n31, n27);
xnor g56 (n109, n21, n12, n49, n32);
nor  g57 (n102, n28, n30, n14, n16);
xnor g58 (n78, n32, n11, n15, n54);
or   g59 (n71, n16, n63, n18, n25);
nor  g60 (n96, n53, n14, n51, n57);
nand g61 (n93, n22, n30, n63, n58);
xor  g62 (n74, n23, n10, n37, n27);
xor  g63 (n85, n60, n29, n6, n27);
xor  g64 (n69, n55, n53, n12, n13);
xnor g65 (n99, n52, n52, n21, n16);
and  g66 (n106, n25, n19, n23, n55);
or   g67 (n64, n26, n55, n63, n29);
xnor g68 (n87, n59, n52, n50, n13);
or   g69 (n91, n53, n15, n19, n24);
or   g70 (n116, n58, n29, n56, n62);
and  g71 (n104, n21, n38, n22, n17);
nand g72 (n82, n23, n10, n48, n51);
xnor g73 (n65, n20, n48, n9, n13);
and  g74 (n76, n6, n63, n49, n10);
and  g75 (n113, n24, n50, n7, n59);
nor  g76 (n83, n21, n24, n30);
nand g77 (n112, n51, n54, n8, n56);
xnor g78 (n98, n8, n22, n9, n26);
nand g79 (n101, n20, n59, n54, n17);
nand g80 (n77, n49, n25, n29, n61);
nor  g81 (n111, n15, n31, n19, n12);
and  g82 (n90, n38, n58, n22, n11);
and  g83 (n92, n55, n32, n62, n48);
nand g84 (n114, n7, n50, n25, n54);
or   g85 (n70, n11, n30, n17);
xnor g86 (n130, n118, n101, n107, n115);
xnor g87 (n122, n95, n110, n113, n103);
xor  g88 (n131, n115, n111, n116, n118);
xnor g89 (n119, n86, n106, n100, n84);
nor  g90 (n132, n112, n99, n94, n82);
xnor g91 (n120, n80, n77, n117, n93);
and  g92 (n124, n117, n97, n116, n115);
or   g93 (n128, n117, n89, n104, n98);
and  g94 (n126, n114, n116, n88, n87);
nand g95 (n125, n105, n113, n96, n92);
nor  g96 (n127, n85, n109, n102, n78);
nand g97 (n129, n112, n114, n90, n113);
and  g98 (n123, n79, n108, n114, n112);
and  g99 (n121, n83, n118, n81, n91);
endmodule
