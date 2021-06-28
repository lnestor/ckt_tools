// Benchmark C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\4_6_generated_stats\Stat_100_57 written by SynthGen on 2021/04/05 11:22:31
module Stat_100_57( n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32,
 n83, n102, n88, n70, n77, n92, n95, n115,
 n94, n99, n71, n106, n104, n78, n100, n87,
 n75, n98, n103, n127, n124, n121, n128, n129,
 n126, n130, n120, n123, n122, n125, n132, n131);

input n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32;

output n83, n102, n88, n70, n77, n92, n95, n115,
 n94, n99, n71, n106, n104, n78, n100, n87,
 n75, n98, n103, n127, n124, n121, n128, n129,
 n126, n130, n120, n123, n122, n125, n132, n131;

wire n33, n34, n35, n36, n37, n38, n39, n40,
 n41, n42, n43, n44, n45, n46, n47, n48,
 n49, n50, n51, n52, n53, n54, n55, n56,
 n57, n58, n59, n60, n61, n62, n63, n64,
 n65, n66, n67, n68, n69, n72, n73, n74,
 n76, n79, n80, n81, n82, n84, n85, n86,
 n89, n90, n91, n93, n96, n97, n101, n105,
 n107, n108, n109, n110, n111, n112, n113, n114,
 n116, n117, n118, n119;

buf  g0 (n35, n2);
buf  g1 (n41, n3);
buf  g2 (n40, n1);
not  g3 (n33, n1);
not  g4 (n37, n3);
buf  g5 (n36, n1);
not  g6 (n42, n2);
buf  g7 (n34, n2);
not  g8 (n39, n2);
buf  g9 (n38, n1);
not  g10 (n53, n33);
not  g11 (n50, n34);
buf  g12 (n46, n35);
buf  g13 (n44, n37);
buf  g14 (n49, n34);
not  g15 (n55, n36);
buf  g16 (n43, n35);
buf  g17 (n45, n36);
buf  g18 (n52, n34);
buf  g19 (n51, n36);
buf  g20 (n47, n35);
and  g21 (n54, n37, n33);
or   g22 (n48, n33, n35, n34, n36);
not  g23 (n64, n45);
not  g24 (n59, n45);
buf  g25 (n66, n47);
not  g26 (n69, n46);
not  g27 (n62, n49);
not  g28 (n58, n46);
not  g29 (n61, n44);
not  g30 (n57, n45);
not  g31 (n60, n48);
not  g32 (n67, n43);
buf  g33 (n63, n45);
nor  g34 (n56, n46, n47, n49, n44);
and  g35 (n68, n44, n48, n47);
xnor g36 (n65, n46, n44, n48);
xnor g37 (n118, n4, n27, n29, n62);
nand g38 (n106, n61, n20, n17);
and  g39 (n82, n65, n22, n31, n56);
nand g40 (n77, n61, n28, n51, n63);
nor  g41 (n100, n11, n17, n14, n64);
or   g42 (n87, n54, n14, n24, n28);
nand g43 (n93, n30, n65, n26, n66);
xnor g44 (n117, n61, n5, n32, n13);
nand g45 (n105, n64, n16, n3, n25);
and  g46 (n81, n60, n13, n55, n20);
and  g47 (n95, n9, n3, n63, n15);
xnor g48 (n101, n64, n50, n8, n21);
nor  g49 (n92, n55, n30, n49, n23);
nand g50 (n90, n6, n19, n27, n53);
nand g51 (n104, n65, n18, n31, n9);
nor  g52 (n85, n53, n5, n8, n18);
and  g53 (n79, n67, n7, n58, n11);
xnor g54 (n71, n66, n25, n22);
xnor g55 (n114, n69, n10, n9);
or   g56 (n113, n62, n51, n12, n58);
and  g57 (n109, n69, n57, n13, n54);
or   g58 (n97, n4, n30, n29, n27);
nor  g59 (n94, n27, n56, n19, n23);
xor  g60 (n75, n59, n23, n16, n14);
xor  g61 (n102, n58, n10, n24, n6);
xnor g62 (n119, n18, n32, n57, n28);
or   g63 (n116, n32, n16, n13, n56);
nand g64 (n86, n49, n67, n31);
xor  g65 (n110, n21, n16, n30, n22);
and  g66 (n72, n21, n59, n69, n29);
and  g67 (n70, n63, n65, n50, n68);
and  g68 (n91, n29, n7, n17, n61);
xnor g69 (n96, n60, n57, n7, n24);
nor  g70 (n73, n68, n19, n26, n53);
xnor g71 (n74, n24, n56, n17, n55);
nor  g72 (n89, n60, n14, n28, n15);
and  g73 (n98, n5, n12, n52, n15);
nor  g74 (n111, n9, n51, n62, n21);
nor  g75 (n103, n58, n55, n5, n12);
xnor g76 (n115, n66, n4, n51, n60);
xor  g77 (n112, n57, n4, n8, n20);
or   g78 (n76, n32, n25, n10, n23);
nor  g79 (n88, n62, n50, n53, n11);
nand g80 (n80, n68, n52, n15, n54);
and  g81 (n78, n66, n26, n6, n19);
nand g82 (n107, n54, n59, n26, n31);
and  g83 (n84, n59, n18, n67, n7);
xor  g84 (n99, n63, n22, n11, n12);
or   g85 (n83, n64, n8, n68, n69);
nand g86 (n108, n50, n52, n6);
nand g87 (n131, n89, n103, n96, n92);
or   g88 (n125, n114, n111, n42, n41);
or   g89 (n123, n108, n107, n38, n116);
nand g90 (n122, n112, n40, n109);
nand g91 (n126, n39, n98, n118, n42);
nor  g92 (n127, n38, n106, n95, n97);
or   g93 (n121, n113, n41, n93, n101);
xor  g94 (n132, n102, n105, n40, n91);
nand g95 (n120, n117, n110, n119, n94);
nand g96 (n130, n39, n39, n40, n104);
xor  g97 (n129, n99, n37, n42, n38);
and  g98 (n128, n100, n41, n38);
nor  g99 (n124, n115, n39, n90, n42);
endmodule
