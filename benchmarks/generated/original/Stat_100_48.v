// Benchmark C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\4_6_generated_stats\Stat_100_48 written by SynthGen on 2021/04/05 11:08:37
module Stat_100_48( n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32,
 n125, n122, n115, n131, n116, n111, n106, n130,
 n105, n119, n128, n102, n123, n120, n129, n107,
 n124, n127, n117, n104, n114, n101, n113, n110,
 n112, n103, n121, n132, n109, n126, n108, n118);

input n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32;

output n125, n122, n115, n131, n116, n111, n106, n130,
 n105, n119, n128, n102, n123, n120, n129, n107,
 n124, n127, n117, n104, n114, n101, n113, n110,
 n112, n103, n121, n132, n109, n126, n108, n118;

wire n33, n34, n35, n36, n37, n38, n39, n40,
 n41, n42, n43, n44, n45, n46, n47, n48,
 n49, n50, n51, n52, n53, n54, n55, n56,
 n57, n58, n59, n60, n61, n62, n63, n64,
 n65, n66, n67, n68, n69, n70, n71, n72,
 n73, n74, n75, n76, n77, n78, n79, n80,
 n81, n82, n83, n84, n85, n86, n87, n88,
 n89, n90, n91, n92, n93, n94, n95, n96,
 n97, n98, n99, n100;

not  g0 (n34, n4);
buf  g1 (n40, n2);
not  g2 (n41, n4);
not  g3 (n39, n3);
not  g4 (n33, n1);
not  g5 (n36, n3);
not  g6 (n37, n1);
not  g7 (n42, n2);
buf  g8 (n35, n1);
xnor g9 (n38, n2, n3);
buf  g10 (n50, n37);
buf  g11 (n53, n40);
buf  g12 (n46, n34);
buf  g13 (n45, n37);
buf  g14 (n47, n34);
not  g15 (n55, n40);
not  g16 (n48, n37);
buf  g17 (n51, n36);
not  g18 (n58, n38);
or   g19 (n56, n40, n42, n36, n33);
xor  g20 (n44, n38, n38, n33, n42);
nand g21 (n43, n36, n39, n35);
nand g22 (n52, n40, n39, n37, n38);
and  g23 (n49, n34, n42, n36, n41);
or   g24 (n57, n41, n33, n35, n39);
nand g25 (n54, n39, n42, n41);
nor  g26 (n62, n15, n13, n45);
nor  g27 (n89, n10, n49, n7);
or   g28 (n85, n5, n24, n22);
xor  g29 (n94, n53, n49, n28);
xnor g30 (n79, n12, n45, n10);
or   g31 (n60, n54, n25, n45);
and  g32 (n73, n30, n21, n12);
xnor g33 (n71, n14, n58, n26);
nor  g34 (n88, n31, n22, n13);
nand g35 (n93, n26, n47);
and  g36 (n67, n15, n43, n46);
and  g37 (n70, n21, n9, n48);
or   g38 (n84, n58, n28, n43);
xnor g39 (n69, n23, n19, n57);
or   g40 (n80, n8, n27, n9);
nand g41 (n61, n52, n17, n53);
and  g42 (n83, n11, n16);
nand g43 (n66, n48, n18, n51);
xnor g44 (n77, n26, n31, n22);
nor  g45 (n81, n31, n27, n44);
or   g46 (n63, n46, n25, n7);
or   g47 (n82, n30, n25, n58);
xnor g48 (n87, n52, n6, n55);
or   g49 (n59, n29, n23, n20, n56);
and  g50 (n96, n11, n56, n57, n23);
or   g51 (n74, n18, n56, n11, n16);
xnor g52 (n97, n20, n27, n14, n22);
nand g53 (n78, n50, n14, n6, n52);
nand g54 (n98, n23, n58, n18, n43);
nand g55 (n99, n26, n47, n20, n51);
xor  g56 (n64, n8, n21, n5, n55);
xor  g57 (n100, n17, n30, n13, n25);
and  g58 (n95, n15, n44, n32, n50);
xnor g59 (n72, n28, n32, n10, n50);
xnor g60 (n68, n29, n17, n57, n30);
nor  g61 (n92, n31, n55, n46, n6);
or   g62 (n75, n24, n48, n7, n8);
nor  g63 (n91, n49, n19, n54, n9);
nor  g64 (n90, n29, n4, n20, n24);
xnor g65 (n76, n51, n44, n12, n54);
or   g66 (n65, n24, n27, n19, n29);
xnor g67 (n86, n28, n21, n53, n5);
nor  g68 (n109, n81, n69, n91);
xnor g69 (n115, n88, n66, n67, n71);
nor  g70 (n131, n62, n84, n86, n74);
xor  g71 (n126, n100, n93, n83, n97);
xnor g72 (n112, n70, n70, n90, n92);
or   g73 (n118, n92, n97, n59, n77);
xnor g74 (n119, n73, n81, n68, n79);
or   g75 (n113, n98, n65, n76, n80);
nor  g76 (n101, n72, n85, n64, n95);
xnor g77 (n122, n91, n82, n90, n61);
nor  g78 (n111, n62, n94, n86, n71);
or   g79 (n125, n84, n99, n94, n63);
nor  g80 (n102, n79, n74, n75, n78);
xor  g81 (n107, n85, n93, n78, n61);
nor  g82 (n106, n69, n82, n70, n65);
nand g83 (n132, n60, n83, n32, n87);
xor  g84 (n130, n67, n81, n99, n89);
nor  g85 (n123, n95, n92, n88, n100);
xnor g86 (n105, n96, n94, n60, n83);
xnor g87 (n104, n68, n80, n64);
xor  g88 (n128, n93, n66, n61, n100);
nor  g89 (n129, n99, n63, n59);
xnor g90 (n114, n84, n90, n62, n69);
xor  g91 (n121, n77, n75, n73, n96);
xnor g92 (n124, n98, n71, n87, n64);
xnor g93 (n108, n87, n72, n78, n75);
xnor g94 (n117, n85, n74, n76, n79);
nor  g95 (n116, n68, n96, n76, n97);
xor  g96 (n120, n66, n88, n89, n65);
nand g97 (n103, n60, n73, n86, n98);
or   g98 (n110, n32, n72, n67, n89);
and  g99 (n127, n59, n77, n82, n95);
endmodule
