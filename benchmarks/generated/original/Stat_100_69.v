// Benchmark C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\4_6_generated_stats\Stat_100_69 written by SynthGen on 2021/04/05 11:23:24
module Stat_100_69( n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32,
 n123, n117, n103, n109, n115, n116, n118, n98,
 n104, n108, n106, n120, n107, n101, n102, n97,
 n122, n119, n100, n110, n111, n99, n114, n121,
 n129, n128, n126, n131, n130, n125, n127, n132);

input n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32;

output n123, n117, n103, n109, n115, n116, n118, n98,
 n104, n108, n106, n120, n107, n101, n102, n97,
 n122, n119, n100, n110, n111, n99, n114, n121,
 n129, n128, n126, n131, n130, n125, n127, n132;

wire n33, n34, n35, n36, n37, n38, n39, n40,
 n41, n42, n43, n44, n45, n46, n47, n48,
 n49, n50, n51, n52, n53, n54, n55, n56,
 n57, n58, n59, n60, n61, n62, n63, n64,
 n65, n66, n67, n68, n69, n70, n71, n72,
 n73, n74, n75, n76, n77, n78, n79, n80,
 n81, n82, n83, n84, n85, n86, n87, n88,
 n89, n90, n91, n92, n93, n94, n95, n96,
 n105, n112, n113, n124;

buf  g0 (n35, n22);
buf  g1 (n39, n3);
buf  g2 (n41, n17);
buf  g3 (n34, n20);
nor  g4 (n38, n11, n15, n16);
nand g5 (n40, n8, n1, n19, n18);
or   g6 (n37, n9, n5, n10, n2);
nor  g7 (n33, n4, n21, n23, n6);
xor  g8 (n36, n7, n12, n13, n14);
buf  g9 (n47, n40);
not  g10 (n49, n37);
buf  g11 (n48, n36);
not  g12 (n42, n34);
not  g13 (n44, n33);
buf  g14 (n45, n39);
not  g15 (n43, n38);
buf  g16 (n46, n35);
not  g17 (n55, n46);
buf  g18 (n56, n44);
buf  g19 (n61, n43);
not  g20 (n51, n48);
not  g21 (n60, n49);
not  g22 (n70, n42);
buf  g23 (n57, n46);
buf  g24 (n54, n44);
not  g25 (n69, n45);
not  g26 (n75, n45);
not  g27 (n52, n47);
not  g28 (n66, n43);
not  g29 (n76, n43);
not  g30 (n68, n46);
not  g31 (n63, n43);
buf  g32 (n72, n48);
buf  g33 (n50, n48);
not  g34 (n62, n47);
buf  g35 (n77, n48);
not  g36 (n74, n45);
not  g37 (n53, n46);
buf  g38 (n73, n42);
not  g39 (n64, n47);
not  g40 (n71, n47);
not  g41 (n59, n49);
buf  g42 (n58, n44);
buf  g43 (n67, n44);
nor  g44 (n65, n49, n45, n41);
not  g45 (n82, n50);
buf  g46 (n78, n54);
not  g47 (n93, n29);
not  g48 (n88, n55);
not  g49 (n91, n53);
buf  g50 (n83, n55);
not  g51 (n86, n53);
buf  g52 (n87, n32);
not  g53 (n90, n26);
buf  g54 (n89, n25);
buf  g55 (n95, n31);
buf  g56 (n92, n53);
not  g57 (n79, n28);
nor  g58 (n85, n55, n24, n49);
xor  g59 (n80, n27, n54, n55);
xor  g60 (n81, n54, n56, n30);
xnor g61 (n84, n53, n51, n52);
xnor g62 (n94, n54, n52, n51);
nand g63 (n103, n67, n68, n74, n84);
xnor g64 (n118, n70, n72, n93);
or   g65 (n110, n70, n68, n69, n63);
xor  g66 (n106, n90, n76, n64, n80);
and  g67 (n112, n56, n93, n74);
nor  g68 (n117, n77, n68, n61, n83);
xor  g69 (n108, n65, n76, n57, n61);
xor  g70 (n114, n60, n91, n70, n57);
and  g71 (n122, n61, n66, n75, n89);
and  g72 (n109, n90, n71, n67, n88);
and  g73 (n123, n77, n73, n89, n57);
nand g74 (n102, n63, n73, n81);
nand g75 (n116, n92, n69, n74, n91);
nor  g76 (n96, n63, n65, n72);
nor  g77 (n111, n82, n58, n60);
or   g78 (n97, n58, n85, n61, n67);
xnor g79 (n124, n91, n72, n68, n78);
nand g80 (n115, n62, n79, n73, n57);
nand g81 (n99, n86, n59, n71);
xnor g82 (n120, n91, n92, n66);
xor  g83 (n100, n75, n62, n90, n77);
or   g84 (n107, n64, n71, n70, n65);
xor  g85 (n119, n69, n64, n89, n60);
nand g86 (n113, n75, n62, n69, n87);
or   g87 (n101, n89, n56, n67, n66);
nand g88 (n98, n76, n64, n60, n75);
xnor g89 (n121, n92, n62, n77, n59);
nand g90 (n105, n59, n71, n63, n90);
nor  g91 (n104, n58, n76, n56, n66);
buf  g92 (n127, n94);
buf  g93 (n125, n117);
buf  g94 (n132, n115);
xnor g95 (n126, n118, n123, n94);
nand g96 (n129, n94, n95);
xnor g97 (n130, n120, n114, n95, n93);
nand g98 (n131, n93, n122, n95, n124);
xnor g99 (n128, n119, n116, n113, n121);
endmodule
