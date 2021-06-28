// Benchmark C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\5_24_randomized_params\Stat_128_636 written by SynthGen on 2021/05/24 19:42:18
module Stat_128_636( n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20,
 n144, n135, n134, n129, n126, n147, n138, n136,
 n139, n140, n125, n137, n146, n142, n132, n127,
 n130, n143, n145, n133, n141, n148, n131, n128);

input n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20;

output n144, n135, n134, n129, n126, n147, n138, n136,
 n139, n140, n125, n137, n146, n142, n132, n127,
 n130, n143, n145, n133, n141, n148, n131, n128;

wire n21, n22, n23, n24, n25, n26, n27, n28,
 n29, n30, n31, n32, n33, n34, n35, n36,
 n37, n38, n39, n40, n41, n42, n43, n44,
 n45, n46, n47, n48, n49, n50, n51, n52,
 n53, n54, n55, n56, n57, n58, n59, n60,
 n61, n62, n63, n64, n65, n66, n67, n68,
 n69, n70, n71, n72, n73, n74, n75, n76,
 n77, n78, n79, n80, n81, n82, n83, n84,
 n85, n86, n87, n88, n89, n90, n91, n92,
 n93, n94, n95, n96, n97, n98, n99, n100,
 n101, n102, n103, n104, n105, n106, n107, n108,
 n109, n110, n111, n112, n113, n114, n115, n116,
 n117, n118, n119, n120, n121, n122, n123, n124;

buf  g0 (n24, n2);
buf  g1 (n25, n3);
not  g2 (n27, n1);
buf  g3 (n21, n4);
buf  g4 (n23, n2);
not  g5 (n22, n1);
buf  g6 (n26, n3);
not  g7 (n41, n27);
buf  g8 (n49, n21);
buf  g9 (n32, n22);
buf  g10 (n47, n25);
buf  g11 (n31, n25);
buf  g12 (n30, n24);
not  g13 (n34, n26);
not  g14 (n51, n22);
not  g15 (n33, n22);
not  g16 (n38, n24);
not  g17 (n35, n26);
buf  g18 (n29, n27);
not  g19 (n28, n27);
buf  g20 (n52, n26);
not  g21 (n50, n25);
not  g22 (n43, n25);
not  g23 (n42, n23);
not  g24 (n48, n26);
buf  g25 (n37, n24);
buf  g26 (n46, n21);
buf  g27 (n36, n24);
buf  g28 (n44, n21);
not  g29 (n39, n23);
not  g30 (n45, n21);
buf  g31 (n40, n23);
not  g32 (n54, n23);
not  g33 (n53, n22);
not  g34 (n80, n18);
buf  g35 (n62, n6);
not  g36 (n69, n41);
buf  g37 (n91, n39);
not  g38 (n61, n44);
not  g39 (n64, n6);
not  g40 (n82, n14);
buf  g41 (n59, n43);
buf  g42 (n79, n37);
buf  g43 (n58, n15);
not  g44 (n68, n40);
buf  g45 (n76, n42);
not  g46 (n70, n13);
buf  g47 (n66, n41);
not  g48 (n83, n33);
not  g49 (n100, n29);
not  g50 (n65, n36);
buf  g51 (n74, n33);
not  g52 (n99, n11);
buf  g53 (n86, n38);
buf  g54 (n78, n18);
buf  g55 (n92, n28);
nand g56 (n89, n5, n31, n36);
nand g57 (n95, n35, n32, n31, n14);
nor  g58 (n85, n19, n17, n20, n13);
xor  g59 (n102, n47, n29, n39, n35);
xor  g60 (n101, n19, n42, n28, n46);
nor  g61 (n84, n48, n10, n40, n39);
nor  g62 (n90, n34, n37, n45, n42);
nand g63 (n94, n11, n29, n12, n30);
nand g64 (n71, n35, n34, n20, n33);
nor  g65 (n88, n16, n46, n32, n13);
nor  g66 (n63, n18, n11, n43, n19);
and  g67 (n98, n43, n20, n34, n9);
xor  g68 (n103, n17, n15, n16, n31);
or   g69 (n73, n10, n12, n7, n17);
and  g70 (n81, n14, n36, n37, n43);
or   g71 (n93, n8, n45, n35);
xnor g72 (n77, n20, n10, n41, n44);
and  g73 (n87, n17, n28, n44, n46);
and  g74 (n97, n39, n15, n47, n13);
or   g75 (n72, n48, n29, n47, n30);
nand g76 (n56, n12, n34, n28, n41);
nand g77 (n55, n31, n8, n14, n5);
or   g78 (n67, n33, n46, n10, n36);
nand g79 (n104, n7, n40, n16, n19);
xnor g80 (n75, n45, n18, n32, n4);
xnor g81 (n96, n40, n38, n37, n11);
xnor g82 (n57, n12, n16, n30, n42);
nor  g83 (n60, n47, n38, n30);
nor  g84 (n105, n15, n9, n32, n44);
xor  g85 (n108, n62, n57, n63, n64);
or   g86 (n107, n59, n66, n56, n61);
xor  g87 (n112, n65, n60, n66, n67);
xor  g88 (n109, n58, n60, n65, n55);
xor  g89 (n110, n57, n62, n63, n59);
xor  g90 (n106, n67, n27, n68);
nor  g91 (n111, n58, n64, n56, n61);
and  g92 (n124, n73, n52, n109, n53);
or   g93 (n119, n108, n50, n72, n71);
or   g94 (n113, n49, n110, n71, n112);
xor  g95 (n114, n54, n111, n69);
nand g96 (n120, n51, n50, n49, n112);
nand g97 (n118, n69, n54, n109);
and  g98 (n115, n51, n51, n50, n52);
or   g99 (n122, n73, n106, n52);
or   g100 (n116, n72, n53, n70);
xor  g101 (n123, n53, n48, n70);
xor  g102 (n117, n110, n50, n49);
and  g103 (n121, n107, n108, n51, n54);
xnor g104 (n147, n122, n82, n116, n93);
nand g105 (n141, n94, n93, n102, n75);
nand g106 (n130, n105, n123, n82, n79);
nor  g107 (n148, n119, n118, n122, n124);
or   g108 (n131, n115, n92, n90, n75);
or   g109 (n138, n85, n84, n102, n78);
nor  g110 (n145, n83, n89, n74, n120);
xor  g111 (n136, n105, n114, n85, n79);
xor  g112 (n129, n78, n101, n99, n94);
nand g113 (n146, n102, n102, n77, n97);
xor  g114 (n142, n99, n89, n86, n123);
nor  g115 (n133, n81, n103, n105, n95);
and  g116 (n134, n100, n83, n98, n116);
nand g117 (n126, n114, n80, n103, n124);
xor  g118 (n132, n96, n96, n119, n100);
nand g119 (n128, n117, n92, n86, n113);
nand g120 (n143, n74, n76, n103, n95);
and  g121 (n135, n91, n77, n120, n115);
and  g122 (n125, n121, n104);
nand g123 (n127, n81, n113, n117, n87);
or   g124 (n137, n84, n97, n118, n76);
or   g125 (n140, n101, n88, n104);
xnor g126 (n144, n121, n103, n98, n105);
or   g127 (n139, n91, n87, n90, n80);
endmodule
