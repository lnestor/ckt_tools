// Benchmark C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\4_6_generated_stats\Stat_100_65 written by SynthGen on 2021/04/05 11:22:51
module Stat_100_65( n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32,
 n90, n122, n125, n128, n131, n108, n102, n120,
 n105, n130, n115, n112, n121, n107, n117, n114,
 n113, n126, n119, n124, n111, n106, n123, n127,
 n104, n118, n129, n132, n109, n110, n116, n103);

input n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32;

output n90, n122, n125, n128, n131, n108, n102, n120,
 n105, n130, n115, n112, n121, n107, n117, n114,
 n113, n126, n119, n124, n111, n106, n123, n127,
 n104, n118, n129, n132, n109, n110, n116, n103;

wire n33, n34, n35, n36, n37, n38, n39, n40,
 n41, n42, n43, n44, n45, n46, n47, n48,
 n49, n50, n51, n52, n53, n54, n55, n56,
 n57, n58, n59, n60, n61, n62, n63, n64,
 n65, n66, n67, n68, n69, n70, n71, n72,
 n73, n74, n75, n76, n77, n78, n79, n80,
 n81, n82, n83, n84, n85, n86, n87, n88,
 n89, n91, n92, n93, n94, n95, n96, n97,
 n98, n99, n100, n101;

buf  g0 (n40, n25);
not  g1 (n34, n23);
buf  g2 (n41, n1);
buf  g3 (n36, n6);
buf  g4 (n38, n19);
buf  g5 (n46, n13);
buf  g6 (n50, n31);
buf  g7 (n37, n30);
not  g8 (n51, n21);
buf  g9 (n33, n8);
not  g10 (n42, n9);
not  g11 (n45, n4);
not  g12 (n35, n20);
buf  g13 (n44, n7);
and  g14 (n39, n26, n22);
nor  g15 (n48, n18, n32, n3, n24);
and  g16 (n49, n11, n16, n29, n10);
nand g17 (n43, n28, n27, n15, n17);
xnor g18 (n47, n14, n2, n12, n5);
not  g19 (n58, n34);
not  g20 (n81, n44);
buf  g21 (n85, n42);
buf  g22 (n52, n41);
not  g23 (n87, n39);
not  g24 (n76, n42);
not  g25 (n62, n46);
buf  g26 (n64, n48);
not  g27 (n56, n44);
buf  g28 (n66, n44);
not  g29 (n68, n45);
buf  g30 (n83, n36);
not  g31 (n57, n33);
not  g32 (n86, n36);
buf  g33 (n71, n39);
not  g34 (n84, n40);
buf  g35 (n74, n46);
buf  g36 (n67, n47);
not  g37 (n63, n40);
buf  g38 (n78, n36);
buf  g39 (n88, n34);
buf  g40 (n55, n37);
not  g41 (n73, n37);
not  g42 (n53, n47);
not  g43 (n77, n35);
buf  g44 (n69, n38);
not  g45 (n75, n43);
not  g46 (n70, n38);
buf  g47 (n54, n42);
buf  g48 (n82, n45);
buf  g49 (n80, n33);
not  g50 (n61, n34);
not  g51 (n59, n38);
not  g52 (n60, n33);
nand g53 (n72, n45, n47, n41);
xor  g54 (n79, n40, n35, n37, n39);
and  g55 (n65, n35, n46, n43);
not  g56 (n89, n54);
buf  g57 (n90, n53);
nand g58 (n91, n52, n53);
buf  g59 (n92, n91);
not  g60 (n93, n90);
or   g61 (n98, n57, n54);
and  g62 (n94, n51, n93, n55, n48);
xnor g63 (n100, n92, n57, n55, n54);
and  g64 (n97, n49, n56, n50, n57);
nor  g65 (n99, n92, n51, n50, n55);
xor  g66 (n95, n49, n49, n51, n50);
xor  g67 (n101, n93, n92, n56);
xor  g68 (n96, n56, n93, n48);
nand g69 (n109, n87, n71, n97, n72);
or   g70 (n132, n100, n83, n68, n96);
xnor g71 (n123, n58, n100, n67, n86);
nor  g72 (n115, n95, n100, n66);
nand g73 (n121, n88, n84, n85, n74);
and  g74 (n128, n98, n63, n101, n69);
or   g75 (n107, n77, n71, n64, n62);
and  g76 (n130, n83, n65, n99, n95);
xor  g77 (n117, n72, n96, n95, n73);
nor  g78 (n131, n80, n97, n70, n87);
xor  g79 (n125, n101, n82, n86, n68);
nor  g80 (n116, n77, n67, n78, n85);
nor  g81 (n104, n98, n97, n74, n76);
xnor g82 (n113, n86, n99, n59, n79);
or   g83 (n111, n58, n58, n59, n88);
or   g84 (n126, n59, n74, n72, n65);
nand g85 (n112, n61, n94, n80, n75);
and  g86 (n103, n71, n69, n65, n79);
nor  g87 (n105, n94, n95, n82, n84);
and  g88 (n106, n96, n94, n63, n87);
xor  g89 (n119, n99, n61, n62, n81);
xor  g90 (n102, n83, n78, n98, n77);
xnor g91 (n127, n73, n78, n64, n70);
xor  g92 (n114, n99, n76, n96, n88);
nor  g93 (n108, n84, n70, n101, n80);
or   g94 (n118, n60, n68, n81);
xnor g95 (n122, n62, n75, n97, n82);
xor  g96 (n110, n75, n67, n63, n79);
or   g97 (n129, n73, n66, n76, n64);
xnor g98 (n124, n85, n61, n101, n69);
xor  g99 (n120, n100, n60, n98);
endmodule
