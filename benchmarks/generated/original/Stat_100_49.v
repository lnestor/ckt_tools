// Benchmark C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\4_6_generated_stats\Stat_100_49 written by SynthGen on 2021/04/05 11:08:37
module Stat_100_49( n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32,
 n96, n107, n118, n110, n98, n106, n113, n121,
 n99, n111, n109, n97, n114, n93, n88, n119,
 n116, n101, n120, n103, n87, n108, n104, n115,
 n123, n128, n127, n129, n126, n124, n132, n131);

input n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32;

output n96, n107, n118, n110, n98, n106, n113, n121,
 n99, n111, n109, n97, n114, n93, n88, n119,
 n116, n101, n120, n103, n87, n108, n104, n115,
 n123, n128, n127, n129, n126, n124, n132, n131;

wire n33, n34, n35, n36, n37, n38, n39, n40,
 n41, n42, n43, n44, n45, n46, n47, n48,
 n49, n50, n51, n52, n53, n54, n55, n56,
 n57, n58, n59, n60, n61, n62, n63, n64,
 n65, n66, n67, n68, n69, n70, n71, n72,
 n73, n74, n75, n76, n77, n78, n79, n80,
 n81, n82, n83, n84, n85, n86, n89, n90,
 n91, n92, n94, n95, n100, n102, n105, n112,
 n117, n122, n125, n130;

buf  g0 (n39, n19);
not  g1 (n49, n27);
buf  g2 (n59, n5);
buf  g3 (n55, n32);
buf  g4 (n42, n28);
buf  g5 (n34, n31);
not  g6 (n51, n21);
not  g7 (n33, n10);
not  g8 (n46, n15);
buf  g9 (n76, n2);
buf  g10 (n53, n3);
buf  g11 (n81, n26);
buf  g12 (n69, n29);
buf  g13 (n35, n20);
not  g14 (n36, n26);
buf  g15 (n45, n16);
buf  g16 (n75, n26);
buf  g17 (n61, n24);
not  g18 (n70, n13);
buf  g19 (n78, n8);
not  g20 (n52, n25);
buf  g21 (n73, n17);
not  g22 (n58, n24);
buf  g23 (n72, n18);
not  g24 (n68, n28);
not  g25 (n43, n29);
buf  g26 (n66, n27);
not  g27 (n60, n11);
buf  g28 (n67, n14);
not  g29 (n62, n12);
buf  g30 (n54, n25);
buf  g31 (n47, n4);
buf  g32 (n65, n31);
not  g33 (n80, n23);
buf  g34 (n64, n30);
buf  g35 (n56, n27);
buf  g36 (n82, n30);
not  g37 (n79, n25);
not  g38 (n77, n22);
not  g39 (n41, n32);
buf  g40 (n48, n29);
buf  g41 (n71, n32);
not  g42 (n57, n28);
buf  g43 (n74, n1);
buf  g44 (n44, n6);
not  g45 (n40, n7);
buf  g46 (n63, n31);
not  g47 (n50, n24);
not  g48 (n37, n9);
not  g49 (n38, n30);
or   g50 (n100, n61, n47, n36, n37);
nand g51 (n114, n53, n55, n78, n75);
or   g52 (n86, n73, n50, n65, n51);
nand g53 (n93, n39, n56, n51, n37);
xnor g54 (n84, n79, n50, n70, n39);
nand g55 (n104, n35, n63, n33, n68);
or   g56 (n101, n40, n80, n72, n39);
nor  g57 (n106, n73, n74, n77, n38);
nand g58 (n116, n44, n67, n66);
nor  g59 (n102, n65, n45, n79, n35);
xnor g60 (n121, n42, n59, n60, n77);
and  g61 (n117, n55, n33, n67, n58);
or   g62 (n120, n72, n58, n56, n79);
or   g63 (n91, n75, n66, n37, n47);
or   g64 (n97, n62, n78, n48, n41);
nor  g65 (n119, n67, n52, n78);
nand g66 (n94, n65, n70, n71);
xor  g67 (n105, n57, n59, n68, n62);
xnor g68 (n113, n53, n74, n63, n35);
and  g69 (n107, n61, n50, n75, n76);
and  g70 (n89, n68, n44, n71, n69);
or   g71 (n98, n46, n68, n67, n36);
nand g72 (n109, n64, n76, n34);
nor  g73 (n95, n57, n44, n46, n41);
or   g74 (n118, n54, n45, n41, n74);
xor  g75 (n85, n49, n71, n46, n43);
nand g76 (n88, n78, n45, n40, n65);
xnor g77 (n90, n76, n42, n74);
xor  g78 (n110, n54, n49, n64, n53);
nor  g79 (n122, n66, n48, n56, n70);
nand g80 (n96, n60, n69, n77, n52);
or   g81 (n115, n73, n38, n75, n69);
xnor g82 (n87, n69, n71, n60, n64);
xnor g83 (n103, n72, n58, n64, n54);
or   g84 (n83, n34, n36, n63, n55);
nor  g85 (n108, n61, n73, n51, n38);
xnor g86 (n112, n48, n72, n77, n43);
xnor g87 (n111, n63, n43, n79, n40);
xor  g88 (n92, n62, n57, n49, n47);
xnor g89 (n99, n59, n34, n80, n33);
or   g90 (n125, n81, n115, n82);
xnor g91 (n127, n82, n110, n117);
xor  g92 (n123, n120, n119, n121);
nand g93 (n126, n81, n122, n116);
nor  g94 (n128, n113, n80, n82);
xor  g95 (n124, n81, n114, n109);
xor  g96 (n130, n81, n82, n80, n108);
or   g97 (n129, n112, n118, n107, n111);
buf  g98 (n132, n130);
buf  g99 (n131, n129);
endmodule
