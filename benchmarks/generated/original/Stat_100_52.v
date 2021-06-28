// Benchmark C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\4_6_generated_stats\Stat_100_52 written by SynthGen on 2021/04/05 11:08:38
module Stat_100_52( n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32,
 n62, n48, n126, n122, n129, n104, n113, n117,
 n123, n115, n110, n111, n116, n105, n112, n132,
 n118, n120, n125, n103, n128, n109, n127, n121,
 n107, n130, n106, n124, n114, n119, n131, n108);

input n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32;

output n62, n48, n126, n122, n129, n104, n113, n117,
 n123, n115, n110, n111, n116, n105, n112, n132,
 n118, n120, n125, n103, n128, n109, n127, n121,
 n107, n130, n106, n124, n114, n119, n131, n108;

wire n33, n34, n35, n36, n37, n38, n39, n40,
 n41, n42, n43, n44, n45, n46, n47, n49,
 n50, n51, n52, n53, n54, n55, n56, n57,
 n58, n59, n60, n61, n63, n64, n65, n66,
 n67, n68, n69, n70, n71, n72, n73, n74,
 n75, n76, n77, n78, n79, n80, n81, n82,
 n83, n84, n85, n86, n87, n88, n89, n90,
 n91, n92, n93, n94, n95, n96, n97, n98,
 n99, n100, n101, n102;

buf  g0 (n41, n2);
buf  g1 (n37, n2);
not  g2 (n38, n3);
not  g3 (n35, n1);
buf  g4 (n39, n2);
not  g5 (n34, n1);
not  g6 (n36, n1);
buf  g7 (n40, n2);
not  g8 (n42, n1);
buf  g9 (n33, n3);
xnor g10 (n56, n32, n10);
and  g11 (n63, n36, n39, n14, n25);
and  g12 (n46, n17, n7, n32, n28);
xor  g13 (n62, n30, n14, n13, n4);
xor  g14 (n44, n18, n8, n31, n42);
xnor g15 (n66, n22, n26, n23, n20);
nor  g16 (n73, n5, n33, n16, n22);
xnor g17 (n76, n10, n31, n11, n12);
xnor g18 (n81, n11, n25, n32, n35);
or   g19 (n57, n6, n15, n29, n10);
and  g20 (n52, n11, n28, n36, n15);
nand g21 (n61, n4, n19, n21);
nor  g22 (n67, n31, n11, n23, n42);
or   g23 (n71, n38, n35, n3, n25);
and  g24 (n43, n23, n24, n15, n34);
nand g25 (n79, n30, n21, n28, n34);
xor  g26 (n55, n39, n6, n22, n14);
and  g27 (n72, n33, n26, n18, n6);
or   g28 (n48, n30, n20, n23, n26);
or   g29 (n68, n42, n12, n9, n20);
nor  g30 (n82, n19, n36, n18, n8);
xnor g31 (n78, n17, n8, n18, n38);
xnor g32 (n74, n19, n13, n22, n5);
nand g33 (n45, n17, n40, n16);
nand g34 (n70, n28, n39, n13, n26);
xor  g35 (n58, n7, n31, n6, n24);
nand g36 (n69, n20, n33, n3, n27);
or   g37 (n75, n19, n5, n41, n24);
and  g38 (n60, n37, n39, n4, n41);
and  g39 (n53, n16, n7, n42, n35);
nor  g40 (n51, n9, n37, n32, n34);
or   g41 (n65, n37, n9, n29, n35);
and  g42 (n47, n24, n4, n17, n12);
nand g43 (n80, n8, n33, n15, n16);
xor  g44 (n50, n29, n27, n38);
xnor g45 (n54, n36, n9, n5, n25);
nand g46 (n49, n14, n37, n40, n10);
xnor g47 (n77, n27, n40, n30, n34);
nand g48 (n59, n38, n29, n13, n21);
xnor g49 (n64, n12, n7, n41);
buf  g50 (n85, n45);
buf  g51 (n86, n46);
not  g52 (n83, n47);
buf  g53 (n84, n48);
nor  g54 (n92, n58, n56, n50, n53);
and  g55 (n96, n50, n60, n52);
or   g56 (n90, n84, n58, n51, n83);
and  g57 (n100, n50, n53, n55, n52);
or   g58 (n99, n85, n59, n55);
xor  g59 (n88, n58, n86, n52, n56);
xnor g60 (n95, n59, n51, n60, n54);
xnor g61 (n93, n53, n54, n55, n57);
and  g62 (n102, n86, n52, n83, n59);
xnor g63 (n98, n84, n85, n56, n57);
xor  g64 (n97, n54, n84, n51);
xor  g65 (n89, n83, n53, n58, n54);
nand g66 (n94, n86, n85, n49);
xor  g67 (n87, n59, n57, n49, n60);
xor  g68 (n101, n50, n51, n56, n49);
and  g69 (n91, n86, n85, n57, n83);
nand g70 (n126, n81, n63, n66, n96);
nand g71 (n115, n81, n101, n66, n69);
nor  g72 (n110, n62, n100, n71, n69);
xnor g73 (n103, n68, n100, n74, n99);
nand g74 (n119, n98, n99, n82, n101);
nand g75 (n132, n72, n61, n102, n78);
and  g76 (n118, n68, n100, n82, n64);
nor  g77 (n107, n74, n67, n75, n98);
or   g78 (n117, n71, n65, n99, n80);
or   g79 (n120, n74, n75, n91, n87);
xor  g80 (n123, n95, n68, n63, n73);
nand g81 (n109, n94, n77, n89, n102);
xnor g82 (n112, n69, n71, n79, n65);
xnor g83 (n104, n93, n100, n102, n61);
nor  g84 (n113, n80, n76, n98, n90);
xnor g85 (n131, n68, n76, n65);
xnor g86 (n125, n72, n66, n98, n77);
nand g87 (n111, n80, n82, n73, n71);
xor  g88 (n128, n74, n79, n70, n88);
xnor g89 (n106, n72, n73, n75, n76);
xnor g90 (n124, n78, n70, n101, n72);
xnor g91 (n130, n92, n64, n67);
xnor g92 (n105, n67, n63, n79, n65);
xor  g93 (n114, n62, n78, n99, n70);
xnor g94 (n122, n82, n63, n62, n73);
and  g95 (n121, n97, n62, n77, n81);
xnor g96 (n127, n79, n102, n66, n80);
xnor g97 (n116, n101, n81, n97, n61);
xor  g98 (n129, n70, n67, n64, n61);
nand g99 (n108, n77, n78, n69, n75);
endmodule
