// Benchmark C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\4_6_generated_stats\Stat_1000_152 written by SynthGen on 2021/04/05 11:08:34
module C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\4_6_generated_stats\Stat_1000_152 ( n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32,
 n956, n936, n952, n962, n946, n928, n939, n945,
 n958, n953, n943, n930, n940, n941, n957, n960,
 n929, n950, n1022, n1027, n1021, n1031, n1029, n1024,
 n1019, n1030, n1028, n1020, n1025, n1032, n1026, n1023);

input n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32;

output n956, n936, n952, n962, n946, n928, n939, n945,
 n958, n953, n943, n930, n940, n941, n957, n960,
 n929, n950, n1022, n1027, n1021, n1031, n1029, n1024,
 n1019, n1030, n1028, n1020, n1025, n1032, n1026, n1023;

wire n33, n34, n35, n36, n37, n38, n39, n40,
 n41, n42, n43, n44, n45, n46, n47, n48,
 n49, n50, n51, n52, n53, n54, n55, n56,
 n57, n58, n59, n60, n61, n62, n63, n64,
 n65, n66, n67, n68, n69, n70, n71, n72,
 n73, n74, n75, n76, n77, n78, n79, n80,
 n81, n82, n83, n84, n85, n86, n87, n88,
 n89, n90, n91, n92, n93, n94, n95, n96,
 n97, n98, n99, n100, n101, n102, n103, n104,
 n105, n106, n107, n108, n109, n110, n111, n112,
 n113, n114, n115, n116, n117, n118, n119, n120,
 n121, n122, n123, n124, n125, n126, n127, n128,
 n129, n130, n131, n132, n133, n134, n135, n136,
 n137, n138, n139, n140, n141, n142, n143, n144,
 n145, n146, n147, n148, n149, n150, n151, n152,
 n153, n154, n155, n156, n157, n158, n159, n160,
 n161, n162, n163, n164, n165, n166, n167, n168,
 n169, n170, n171, n172, n173, n174, n175, n176,
 n177, n178, n179, n180, n181, n182, n183, n184,
 n185, n186, n187, n188, n189, n190, n191, n192,
 n193, n194, n195, n196, n197, n198, n199, n200,
 n201, n202, n203, n204, n205, n206, n207, n208,
 n209, n210, n211, n212, n213, n214, n215, n216,
 n217, n218, n219, n220, n221, n222, n223, n224,
 n225, n226, n227, n228, n229, n230, n231, n232,
 n233, n234, n235, n236, n237, n238, n239, n240,
 n241, n242, n243, n244, n245, n246, n247, n248,
 n249, n250, n251, n252, n253, n254, n255, n256,
 n257, n258, n259, n260, n261, n262, n263, n264,
 n265, n266, n267, n268, n269, n270, n271, n272,
 n273, n274, n275, n276, n277, n278, n279, n280,
 n281, n282, n283, n284, n285, n286, n287, n288,
 n289, n290, n291, n292, n293, n294, n295, n296,
 n297, n298, n299, n300, n301, n302, n303, n304,
 n305, n306, n307, n308, n309, n310, n311, n312,
 n313, n314, n315, n316, n317, n318, n319, n320,
 n321, n322, n323, n324, n325, n326, n327, n328,
 n329, n330, n331, n332, n333, n334, n335, n336,
 n337, n338, n339, n340, n341, n342, n343, n344,
 n345, n346, n347, n348, n349, n350, n351, n352,
 n353, n354, n355, n356, n357, n358, n359, n360,
 n361, n362, n363, n364, n365, n366, n367, n368,
 n369, n370, n371, n372, n373, n374, n375, n376,
 n377, n378, n379, n380, n381, n382, n383, n384,
 n385, n386, n387, n388, n389, n390, n391, n392,
 n393, n394, n395, n396, n397, n398, n399, n400,
 n401, n402, n403, n404, n405, n406, n407, n408,
 n409, n410, n411, n412, n413, n414, n415, n416,
 n417, n418, n419, n420, n421, n422, n423, n424,
 n425, n426, n427, n428, n429, n430, n431, n432,
 n433, n434, n435, n436, n437, n438, n439, n440,
 n441, n442, n443, n444, n445, n446, n447, n448,
 n449, n450, n451, n452, n453, n454, n455, n456,
 n457, n458, n459, n460, n461, n462, n463, n464,
 n465, n466, n467, n468, n469, n470, n471, n472,
 n473, n474, n475, n476, n477, n478, n479, n480,
 n481, n482, n483, n484, n485, n486, n487, n488,
 n489, n490, n491, n492, n493, n494, n495, n496,
 n497, n498, n499, n500, n501, n502, n503, n504,
 n505, n506, n507, n508, n509, n510, n511, n512,
 n513, n514, n515, n516, n517, n518, n519, n520,
 n521, n522, n523, n524, n525, n526, n527, n528,
 n529, n530, n531, n532, n533, n534, n535, n536,
 n537, n538, n539, n540, n541, n542, n543, n544,
 n545, n546, n547, n548, n549, n550, n551, n552,
 n553, n554, n555, n556, n557, n558, n559, n560,
 n561, n562, n563, n564, n565, n566, n567, n568,
 n569, n570, n571, n572, n573, n574, n575, n576,
 n577, n578, n579, n580, n581, n582, n583, n584,
 n585, n586, n587, n588, n589, n590, n591, n592,
 n593, n594, n595, n596, n597, n598, n599, n600,
 n601, n602, n603, n604, n605, n606, n607, n608,
 n609, n610, n611, n612, n613, n614, n615, n616,
 n617, n618, n619, n620, n621, n622, n623, n624,
 n625, n626, n627, n628, n629, n630, n631, n632,
 n633, n634, n635, n636, n637, n638, n639, n640,
 n641, n642, n643, n644, n645, n646, n647, n648,
 n649, n650, n651, n652, n653, n654, n655, n656,
 n657, n658, n659, n660, n661, n662, n663, n664,
 n665, n666, n667, n668, n669, n670, n671, n672,
 n673, n674, n675, n676, n677, n678, n679, n680,
 n681, n682, n683, n684, n685, n686, n687, n688,
 n689, n690, n691, n692, n693, n694, n695, n696,
 n697, n698, n699, n700, n701, n702, n703, n704,
 n705, n706, n707, n708, n709, n710, n711, n712,
 n713, n714, n715, n716, n717, n718, n719, n720,
 n721, n722, n723, n724, n725, n726, n727, n728,
 n729, n730, n731, n732, n733, n734, n735, n736,
 n737, n738, n739, n740, n741, n742, n743, n744,
 n745, n746, n747, n748, n749, n750, n751, n752,
 n753, n754, n755, n756, n757, n758, n759, n760,
 n761, n762, n763, n764, n765, n766, n767, n768,
 n769, n770, n771, n772, n773, n774, n775, n776,
 n777, n778, n779, n780, n781, n782, n783, n784,
 n785, n786, n787, n788, n789, n790, n791, n792,
 n793, n794, n795, n796, n797, n798, n799, n800,
 n801, n802, n803, n804, n805, n806, n807, n808,
 n809, n810, n811, n812, n813, n814, n815, n816,
 n817, n818, n819, n820, n821, n822, n823, n824,
 n825, n826, n827, n828, n829, n830, n831, n832,
 n833, n834, n835, n836, n837, n838, n839, n840,
 n841, n842, n843, n844, n845, n846, n847, n848,
 n849, n850, n851, n852, n853, n854, n855, n856,
 n857, n858, n859, n860, n861, n862, n863, n864,
 n865, n866, n867, n868, n869, n870, n871, n872,
 n873, n874, n875, n876, n877, n878, n879, n880,
 n881, n882, n883, n884, n885, n886, n887, n888,
 n889, n890, n891, n892, n893, n894, n895, n896,
 n897, n898, n899, n900, n901, n902, n903, n904,
 n905, n906, n907, n908, n909, n910, n911, n912,
 n913, n914, n915, n916, n917, n918, n919, n920,
 n921, n922, n923, n924, n925, n926, n927, n931,
 n932, n933, n934, n935, n937, n938, n942, n944,
 n947, n948, n949, n951, n954, n955, n959, n961,
 n963, n964, n965, n966, n967, n968, n969, n970,
 n971, n972, n973, n974, n975, n976, n977, n978,
 n979, n980, n981, n982, n983, n984, n985, n986,
 n987, n988, n989, n990, n991, n992, n993, n994,
 n995, n996, n997, n998, n999, n1000, n1001, n1002,
 n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010,
 n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018;

buf  g0 (n138, n28);
not  g1 (n123, n23);
buf  g2 (n105, n28);
buf  g3 (n148, n13);
buf  g4 (n131, n11);
not  g5 (n95, n10);
not  g6 (n71, n30);
not  g7 (n108, n14);
buf  g8 (n87, n29);
not  g9 (n78, n31);
buf  g10 (n70, n22);
buf  g11 (n56, n8);
not  g12 (n41, n29);
buf  g13 (n67, n20);
not  g14 (n76, n14);
buf  g15 (n73, n1);
not  g16 (n65, n10);
buf  g17 (n141, n21);
not  g18 (n142, n18);
not  g19 (n143, n18);
not  g20 (n100, n8);
not  g21 (n132, n24);
buf  g22 (n38, n5);
buf  g23 (n98, n7);
buf  g24 (n133, n4);
not  g25 (n106, n20);
buf  g26 (n49, n27);
buf  g27 (n77, n25);
not  g28 (n68, n8);
not  g29 (n149, n24);
not  g30 (n118, n8);
buf  g31 (n39, n10);
buf  g32 (n99, n4);
buf  g33 (n90, n29);
not  g34 (n129, n25);
not  g35 (n94, n2);
not  g36 (n45, n12);
not  g37 (n136, n25);
not  g38 (n96, n16);
not  g39 (n117, n30);
not  g40 (n83, n4);
not  g41 (n121, n18);
buf  g42 (n50, n2);
buf  g43 (n151, n30);
buf  g44 (n156, n10);
buf  g45 (n101, n32);
buf  g46 (n72, n1);
not  g47 (n145, n24);
buf  g48 (n110, n27);
not  g49 (n88, n12);
not  g50 (n51, n32);
buf  g51 (n64, n9);
buf  g52 (n147, n15);
buf  g53 (n116, n6);
not  g54 (n104, n7);
buf  g55 (n47, n3);
not  g56 (n102, n16);
buf  g57 (n135, n4);
not  g58 (n82, n22);
buf  g59 (n150, n26);
buf  g60 (n107, n3);
not  g61 (n125, n3);
not  g62 (n52, n6);
buf  g63 (n53, n13);
buf  g64 (n97, n15);
buf  g65 (n122, n28);
not  g66 (n124, n23);
not  g67 (n54, n24);
buf  g68 (n160, n17);
not  g69 (n58, n19);
not  g70 (n63, n3);
not  g71 (n44, n19);
buf  g72 (n155, n20);
not  g73 (n55, n9);
not  g74 (n157, n13);
not  g75 (n112, n1);
not  g76 (n91, n22);
buf  g77 (n74, n5);
not  g78 (n84, n31);
not  g79 (n146, n26);
buf  g80 (n134, n30);
buf  g81 (n62, n16);
not  g82 (n126, n23);
buf  g83 (n59, n14);
buf  g84 (n139, n11);
not  g85 (n35, n2);
not  g86 (n66, n28);
buf  g87 (n79, n17);
buf  g88 (n42, n27);
buf  g89 (n89, n29);
not  g90 (n115, n15);
buf  g91 (n153, n2);
buf  g92 (n61, n7);
buf  g93 (n140, n14);
not  g94 (n34, n22);
buf  g95 (n128, n13);
not  g96 (n159, n31);
not  g97 (n40, n32);
buf  g98 (n86, n5);
buf  g99 (n103, n1);
buf  g100 (n114, n23);
buf  g101 (n109, n9);
buf  g102 (n43, n20);
buf  g103 (n152, n6);
not  g104 (n46, n18);
buf  g105 (n85, n16);
not  g106 (n144, n9);
buf  g107 (n36, n12);
buf  g108 (n137, n32);
buf  g109 (n158, n26);
not  g110 (n120, n21);
not  g111 (n69, n19);
not  g112 (n113, n11);
not  g113 (n80, n15);
not  g114 (n60, n6);
buf  g115 (n111, n26);
not  g116 (n119, n5);
buf  g117 (n81, n17);
buf  g118 (n75, n31);
not  g119 (n37, n19);
buf  g120 (n92, n27);
not  g121 (n154, n7);
buf  g122 (n127, n21);
buf  g123 (n93, n12);
not  g124 (n130, n17);
buf  g125 (n57, n11);
not  g126 (n48, n25);
not  g127 (n33, n21);
buf  g128 (n578, n129);
not  g129 (n318, n73);
not  g130 (n364, n103);
not  g131 (n250, n141);
not  g132 (n485, n139);
buf  g133 (n480, n46);
buf  g134 (n313, n123);
buf  g135 (n330, n87);
not  g136 (n394, n120);
not  g137 (n303, n35);
buf  g138 (n422, n66);
buf  g139 (n591, n68);
buf  g140 (n221, n65);
not  g141 (n289, n61);
buf  g142 (n190, n72);
not  g143 (n342, n108);
not  g144 (n207, n95);
buf  g145 (n538, n48);
not  g146 (n489, n116);
not  g147 (n505, n53);
buf  g148 (n228, n82);
buf  g149 (n397, n137);
buf  g150 (n274, n90);
buf  g151 (n184, n51);
buf  g152 (n515, n117);
buf  g153 (n343, n57);
not  g154 (n181, n55);
not  g155 (n263, n63);
not  g156 (n279, n103);
buf  g157 (n251, n49);
buf  g158 (n496, n53);
buf  g159 (n558, n107);
buf  g160 (n189, n42);
not  g161 (n356, n43);
not  g162 (n384, n78);
buf  g163 (n589, n44);
not  g164 (n385, n138);
not  g165 (n325, n89);
not  g166 (n502, n93);
buf  g167 (n460, n78);
buf  g168 (n275, n141);
buf  g169 (n339, n46);
buf  g170 (n214, n119);
buf  g171 (n526, n63);
not  g172 (n406, n45);
buf  g173 (n466, n117);
not  g174 (n449, n45);
not  g175 (n536, n116);
not  g176 (n357, n130);
buf  g177 (n574, n48);
not  g178 (n470, n129);
not  g179 (n249, n58);
not  g180 (n192, n57);
not  g181 (n442, n77);
buf  g182 (n381, n73);
buf  g183 (n596, n33);
not  g184 (n435, n130);
buf  g185 (n345, n44);
not  g186 (n319, n132);
not  g187 (n272, n72);
not  g188 (n262, n75);
buf  g189 (n276, n112);
not  g190 (n222, n47);
not  g191 (n527, n141);
buf  g192 (n353, n40);
buf  g193 (n443, n50);
buf  g194 (n445, n90);
not  g195 (n546, n42);
not  g196 (n597, n98);
not  g197 (n367, n81);
not  g198 (n567, n39);
buf  g199 (n167, n41);
buf  g200 (n511, n51);
not  g201 (n514, n106);
buf  g202 (n453, n111);
not  g203 (n415, n126);
not  g204 (n282, n84);
not  g205 (n560, n100);
not  g206 (n462, n59);
buf  g207 (n326, n54);
buf  g208 (n171, n44);
buf  g209 (n469, n77);
not  g210 (n554, n107);
not  g211 (n293, n132);
buf  g212 (n507, n115);
not  g213 (n240, n67);
not  g214 (n520, n84);
not  g215 (n195, n87);
not  g216 (n575, n127);
buf  g217 (n191, n90);
buf  g218 (n176, n40);
not  g219 (n517, n123);
buf  g220 (n217, n81);
buf  g221 (n512, n121);
buf  g222 (n299, n85);
not  g223 (n211, n119);
not  g224 (n446, n33);
not  g225 (n428, n107);
not  g226 (n573, n121);
buf  g227 (n532, n135);
buf  g228 (n257, n115);
buf  g229 (n177, n132);
not  g230 (n187, n38);
buf  g231 (n359, n59);
not  g232 (n396, n36);
buf  g233 (n588, n98);
buf  g234 (n528, n54);
buf  g235 (n372, n72);
not  g236 (n291, n49);
buf  g237 (n349, n119);
not  g238 (n281, n100);
not  g239 (n476, n134);
not  g240 (n500, n90);
not  g241 (n165, n93);
buf  g242 (n580, n136);
buf  g243 (n434, n102);
not  g244 (n551, n125);
not  g245 (n576, n75);
not  g246 (n592, n81);
buf  g247 (n577, n34);
buf  g248 (n248, n76);
buf  g249 (n392, n128);
buf  g250 (n273, n80);
not  g251 (n208, n60);
not  g252 (n234, n38);
not  g253 (n508, n47);
buf  g254 (n369, n110);
buf  g255 (n477, n112);
not  g256 (n495, n74);
buf  g257 (n390, n91);
buf  g258 (n516, n98);
not  g259 (n441, n83);
buf  g260 (n322, n98);
buf  g261 (n452, n104);
buf  g262 (n542, n140);
buf  g263 (n587, n92);
buf  g264 (n459, n62);
not  g265 (n490, n120);
buf  g266 (n315, n100);
buf  g267 (n447, n49);
buf  g268 (n467, n97);
not  g269 (n175, n80);
buf  g270 (n448, n95);
not  g271 (n565, n94);
buf  g272 (n581, n42);
buf  g273 (n253, n74);
not  g274 (n401, n40);
buf  g275 (n413, n64);
not  g276 (n294, n38);
buf  g277 (n180, n38);
not  g278 (n350, n52);
buf  g279 (n201, n71);
not  g280 (n209, n59);
not  g281 (n306, n101);
buf  g282 (n531, n126);
not  g283 (n524, n83);
buf  g284 (n305, n83);
not  g285 (n314, n103);
buf  g286 (n523, n109);
buf  g287 (n220, n121);
buf  g288 (n215, n118);
not  g289 (n169, n69);
not  g290 (n285, n122);
not  g291 (n286, n47);
buf  g292 (n571, n43);
buf  g293 (n425, n64);
buf  g294 (n488, n137);
buf  g295 (n563, n99);
not  g296 (n196, n120);
buf  g297 (n347, n117);
not  g298 (n474, n35);
buf  g299 (n292, n86);
buf  g300 (n534, n88);
buf  g301 (n166, n77);
buf  g302 (n310, n51);
buf  g303 (n420, n62);
not  g304 (n205, n37);
not  g305 (n590, n40);
buf  g306 (n200, n142);
buf  g307 (n268, n105);
buf  g308 (n197, n135);
buf  g309 (n530, n34);
not  g310 (n247, n110);
buf  g311 (n332, n139);
not  g312 (n568, n102);
not  g313 (n245, n116);
buf  g314 (n439, n110);
buf  g315 (n433, n123);
not  g316 (n225, n99);
buf  g317 (n562, n131);
buf  g318 (n237, n124);
buf  g319 (n311, n106);
buf  g320 (n355, n66);
not  g321 (n487, n96);
buf  g322 (n258, n56);
not  g323 (n463, n108);
buf  g324 (n337, n64);
not  g325 (n232, n128);
not  g326 (n238, n120);
buf  g327 (n389, n41);
buf  g328 (n468, n125);
not  g329 (n233, n52);
buf  g330 (n376, n126);
not  g331 (n226, n137);
buf  g332 (n593, n79);
not  g333 (n518, n71);
buf  g334 (n464, n86);
buf  g335 (n481, n104);
not  g336 (n254, n79);
not  g337 (n569, n65);
not  g338 (n287, n45);
buf  g339 (n236, n35);
not  g340 (n431, n44);
buf  g341 (n178, n135);
buf  g342 (n493, n93);
not  g343 (n501, n104);
buf  g344 (n386, n70);
buf  g345 (n407, n122);
not  g346 (n471, n138);
not  g347 (n206, n37);
buf  g348 (n336, n74);
buf  g349 (n456, n57);
buf  g350 (n410, n50);
buf  g351 (n179, n43);
not  g352 (n365, n113);
buf  g353 (n548, n53);
buf  g354 (n296, n94);
not  g355 (n227, n115);
buf  g356 (n437, n86);
not  g357 (n564, n74);
buf  g358 (n483, n129);
buf  g359 (n216, n101);
not  g360 (n450, n36);
buf  g361 (n335, n91);
buf  g362 (n267, n49);
buf  g363 (n503, n68);
buf  g364 (n298, n46);
buf  g365 (n363, n76);
buf  g366 (n373, n130);
buf  g367 (n161, n36);
buf  g368 (n288, n76);
not  g369 (n270, n111);
not  g370 (n424, n99);
not  g371 (n188, n134);
not  g372 (n403, n65);
not  g373 (n244, n67);
buf  g374 (n377, n39);
buf  g375 (n230, n69);
not  g376 (n380, n50);
not  g377 (n405, n104);
not  g378 (n411, n36);
buf  g379 (n510, n80);
not  g380 (n513, n75);
not  g381 (n550, n139);
not  g382 (n295, n89);
buf  g383 (n382, n133);
not  g384 (n426, n73);
buf  g385 (n243, n140);
buf  g386 (n259, n109);
not  g387 (n198, n34);
buf  g388 (n421, n119);
not  g389 (n521, n136);
not  g390 (n378, n55);
buf  g391 (n494, n131);
buf  g392 (n451, n135);
buf  g393 (n317, n95);
buf  g394 (n418, n61);
not  g395 (n210, n57);
not  g396 (n555, n67);
buf  g397 (n261, n52);
not  g398 (n598, n84);
buf  g399 (n223, n53);
buf  g400 (n561, n97);
not  g401 (n366, n101);
not  g402 (n387, n93);
not  g403 (n436, n142);
not  g404 (n486, n117);
not  g405 (n482, n142);
not  g406 (n400, n63);
buf  g407 (n429, n113);
not  g408 (n388, n35);
not  g409 (n414, n54);
not  g410 (n419, n110);
not  g411 (n239, n39);
buf  g412 (n265, n84);
not  g413 (n585, n125);
not  g414 (n553, n102);
not  g415 (n393, n58);
not  g416 (n454, n94);
buf  g417 (n423, n60);
not  g418 (n324, n64);
buf  g419 (n360, n58);
buf  g420 (n255, n138);
buf  g421 (n203, n140);
not  g422 (n174, n141);
buf  g423 (n327, n109);
not  g424 (n354, n62);
not  g425 (n168, n127);
buf  g426 (n252, n87);
not  g427 (n584, n67);
not  g428 (n465, n113);
buf  g429 (n173, n73);
buf  g430 (n284, n47);
buf  g431 (n427, n69);
not  g432 (n162, n82);
buf  g433 (n583, n43);
not  g434 (n333, n116);
not  g435 (n204, n83);
not  g436 (n218, n126);
buf  g437 (n395, n118);
buf  g438 (n260, n105);
buf  g439 (n280, n89);
not  g440 (n283, n102);
buf  g441 (n163, n91);
buf  g442 (n599, n106);
buf  g443 (n264, n137);
buf  g444 (n595, n56);
not  g445 (n461, n63);
not  g446 (n370, n127);
not  g447 (n193, n112);
not  g448 (n545, n131);
not  g449 (n213, n34);
not  g450 (n457, n61);
buf  g451 (n492, n121);
not  g452 (n399, n68);
not  g453 (n321, n100);
buf  g454 (n194, n68);
not  g455 (n170, n134);
not  g456 (n540, n55);
buf  g457 (n256, n107);
not  g458 (n202, n41);
not  g459 (n266, n96);
not  g460 (n346, n41);
not  g461 (n348, n133);
not  g462 (n302, n132);
not  g463 (n362, n85);
not  g464 (n509, n75);
buf  g465 (n358, n46);
buf  g466 (n316, n122);
not  g467 (n269, n109);
not  g468 (n535, n62);
not  g469 (n199, n136);
not  g470 (n340, n114);
not  g471 (n300, n88);
buf  g472 (n172, n128);
not  g473 (n409, n92);
not  g474 (n341, n50);
buf  g475 (n541, n79);
buf  g476 (n398, n81);
buf  g477 (n271, n85);
not  g478 (n594, n97);
buf  g479 (n579, n71);
not  g480 (n537, n127);
not  g481 (n499, n99);
not  g482 (n212, n130);
not  g483 (n334, n69);
buf  g484 (n473, n87);
buf  g485 (n304, n125);
buf  g486 (n430, n80);
not  g487 (n383, n122);
not  g488 (n241, n124);
not  g489 (n438, n105);
not  g490 (n329, n123);
buf  g491 (n320, n133);
not  g492 (n570, n54);
buf  g493 (n297, n111);
not  g494 (n479, n96);
buf  g495 (n219, n48);
buf  g496 (n183, n66);
not  g497 (n379, n129);
buf  g498 (n312, n96);
buf  g499 (n484, n56);
buf  g500 (n229, n42);
not  g501 (n301, n105);
not  g502 (n277, n56);
not  g503 (n371, n76);
buf  g504 (n307, n79);
buf  g505 (n417, n108);
not  g506 (n458, n70);
buf  g507 (n309, n113);
buf  g508 (n525, n91);
buf  g509 (n475, n60);
buf  g510 (n185, n92);
buf  g511 (n522, n136);
buf  g512 (n182, n55);
buf  g513 (n556, n88);
not  g514 (n544, n70);
buf  g515 (n455, n94);
buf  g516 (n416, n45);
buf  g517 (n566, n133);
not  g518 (n235, n33);
buf  g519 (n491, n114);
buf  g520 (n361, n140);
buf  g521 (n290, n59);
buf  g522 (n547, n101);
buf  g523 (n506, n103);
buf  g524 (n368, n112);
not  g525 (n408, n88);
buf  g526 (n557, n111);
not  g527 (n497, n78);
not  g528 (n472, n48);
buf  g529 (n164, n51);
not  g530 (n352, n106);
not  g531 (n391, n128);
not  g532 (n529, n139);
buf  g533 (n504, n60);
buf  g534 (n444, n66);
not  g535 (n331, n89);
buf  g536 (n246, n114);
buf  g537 (n374, n37);
buf  g538 (n186, n86);
buf  g539 (n328, n78);
not  g540 (n440, n97);
buf  g541 (n231, n124);
buf  g542 (n308, n95);
not  g543 (n498, n71);
buf  g544 (n559, n61);
buf  g545 (n242, n72);
not  g546 (n278, n82);
not  g547 (n375, n124);
buf  g548 (n519, n65);
buf  g549 (n586, n77);
buf  g550 (n582, n85);
not  g551 (n224, n108);
not  g552 (n323, n114);
buf  g553 (n412, n134);
buf  g554 (n572, n37);
buf  g555 (n404, n118);
not  g556 (n549, n131);
not  g557 (n543, n92);
not  g558 (n402, n115);
buf  g559 (n478, n138);
not  g560 (n432, n58);
buf  g561 (n539, n33);
not  g562 (n338, n39);
buf  g563 (n552, n118);
buf  g564 (n344, n70);
not  g565 (n351, n82);
buf  g566 (n533, n52);
nand g567 (n631, n184, n143, n163, n152);
and  g568 (n607, n231, n154, n152, n188);
xor  g569 (n630, n150, n151, n175, n179);
nand g570 (n624, n156, n177, n198, n146);
nor  g571 (n618, n146, n157, n182, n151);
xnor g572 (n623, n160, n204, n217, n147);
or   g573 (n612, n156, n186, n174, n148);
xnor g574 (n608, n234, n146, n223, n167);
and  g575 (n613, n148, n212, n227, n222);
or   g576 (n620, n208, n142, n168, n219);
or   g577 (n615, n165, n172, n199, n213);
nor  g578 (n629, n146, n161, n192, n162);
or   g579 (n604, n157, n232, n206, n207);
xnor g580 (n610, n149, n216, n144, n145);
or   g581 (n617, n233, n214, n183, n144);
xor  g582 (n606, n144, n171, n158, n210);
or   g583 (n627, n143, n193, n149, n151);
or   g584 (n614, n196, n150, n185, n155);
xor  g585 (n611, n191, n158, n215, n159);
nor  g586 (n621, n145, n164, n150, n160);
or   g587 (n605, n181, n149, n147, n205);
xor  g588 (n616, n201, n194, n158, n154);
and  g589 (n633, n202, n195, n218, n155);
xor  g590 (n600, n225, n148, n169, n166);
nand g591 (n625, n155, n152, n148, n159);
xor  g592 (n619, n155, n160, n170, n200);
or   g593 (n628, n145, n228, n153);
nand g594 (n635, n173, n153, n235, n144);
xor  g595 (n601, n145, n150, n160, n149);
or   g596 (n609, n157, n226, n178, n189);
nand g597 (n622, n224, n229, n176, n143);
nand g598 (n603, n153, n156, n209, n187);
or   g599 (n626, n190, n159, n211, n158);
xnor g600 (n632, n154, n203, n147, n220);
and  g601 (n636, n197, n157, n151, n156);
nor  g602 (n602, n152, n143, n154, n147);
xor  g603 (n634, n180, n221, n230, n159);
not  g604 (n644, n605);
not  g605 (n638, n604);
not  g606 (n643, n600);
not  g607 (n648, n603);
buf  g608 (n649, n246);
buf  g609 (n652, n240);
buf  g610 (n650, n603);
buf  g611 (n647, n241);
not  g612 (n640, n601);
buf  g613 (n651, n601);
not  g614 (n641, n243);
not  g615 (n639, n245);
nand g616 (n637, n247, n600, n242, n604);
xor  g617 (n642, n600, n239, n603, n244);
or   g618 (n646, n238, n602, n601, n236);
nand g619 (n645, n604, n237, n602);
nand g620 (n663, n313, n652, n286, n638);
and  g621 (n673, n297, n646, n282, n281);
xnor g622 (n656, n294, n276, n637, n278);
nand g623 (n653, n307, n291, n651);
xnor g624 (n661, n652, n308, n295, n271);
or   g625 (n660, n252, n312, n259, n642);
nor  g626 (n658, n645, n248, n277, n263);
xnor g627 (n662, n255, n650, n290, n298);
xor  g628 (n668, n272, n249, n648, n264);
xor  g629 (n657, n266, n270, n300, n274);
nor  g630 (n665, n644, n650, n306, n303);
and  g631 (n671, n639, n269, n309, n261);
xor  g632 (n666, n257, n254, n293, n251);
xnor g633 (n655, n311, n260, n262, n275);
nand g634 (n669, n301, n643, n285, n651);
or   g635 (n654, n267, n287, n265, n652);
nor  g636 (n670, n299, n647, n304, n640);
xor  g637 (n672, n279, n650, n296, n649);
nand g638 (n659, n289, n280, n283, n310);
xnor g639 (n667, n273, n292, n305, n302);
or   g640 (n674, n253, n641, n250, n268);
and  g641 (n664, n256, n284, n258, n288);
nand g642 (n747, n440, n605, n421, n355);
nand g643 (n746, n398, n656, n337, n654);
or   g644 (n745, n458, n379, n364, n632);
nand g645 (n722, n613, n670, n363, n391);
xor  g646 (n755, n431, n324, n664, n366);
or   g647 (n690, n457, n661, n619, n658);
or   g648 (n728, n424, n486, n450, n390);
nor  g649 (n704, n621, n339, n655, n631);
nand g650 (n678, n610, n368, n670, n631);
xor  g651 (n711, n445, n422, n448, n613);
xor  g652 (n689, n451, n335, n632, n317);
xnor g653 (n683, n614, n485, n632, n631);
xnor g654 (n705, n380, n665, n351, n667);
or   g655 (n677, n466, n656, n393, n662);
or   g656 (n748, n474, n615, n666, n367);
nand g657 (n750, n322, n661, n489, n660);
xor  g658 (n679, n628, n617, n318, n670);
and  g659 (n730, n662, n412, n323, n669);
xnor g660 (n731, n341, n449, n419, n423);
nor  g661 (n724, n452, n626, n373, n321);
xnor g662 (n761, n612, n624, n627, n656);
xnor g663 (n697, n661, n625, n610, n370);
nor  g664 (n732, n672, n615, n473, n673);
and  g665 (n719, n666, n673, n607, n622);
nand g666 (n720, n629, n672, n612, n658);
or   g667 (n740, n405, n660, n315, n326);
xnor g668 (n693, n653, n671, n327, n657);
or   g669 (n675, n320, n614, n607, n672);
or   g670 (n710, n381, n617, n619, n439);
and  g671 (n694, n618, n653, n662, n658);
nand g672 (n762, n657, n632, n476, n463);
xnor g673 (n691, n354, n330, n631, n461);
nand g674 (n758, n612, n630, n426, n459);
and  g675 (n687, n437, n606, n659, n674);
or   g676 (n681, n629, n655, n669, n365);
or   g677 (n708, n340, n621, n468, n653);
xnor g678 (n717, n614, n369, n336, n406);
nor  g679 (n760, n413, n346, n659, n669);
xor  g680 (n738, n433, n394, n329, n616);
and  g681 (n713, n630, n471, n608, n609);
nand g682 (n744, n481, n420, n613, n377);
nor  g683 (n684, n334, n374, n657, n462);
nor  g684 (n754, n625, n401, n630, n417);
and  g685 (n700, n616, n622, n453, n611);
and  g686 (n737, n376, n358, n621, n630);
or   g687 (n702, n410, n490, n386, n416);
nor  g688 (n739, n395, n342, n663, n606);
or   g689 (n698, n659, n371, n319, n396);
nand g690 (n753, n465, n480, n623, n344);
nor  g691 (n692, n443, n653, n608, n654);
xnor g692 (n723, n467, n674, n350, n664);
or   g693 (n699, n660, n615, n399, n479);
nor  g694 (n736, n668, n624, n436, n633);
xor  g695 (n685, n622, n382, n655, n627);
nor  g696 (n696, n385, n362, n627, n620);
xnor g697 (n725, n438, n665, n441, n673);
and  g698 (n726, n345, n655, n343, n618);
nand g699 (n712, n454, n447, n664, n446);
xnor g700 (n749, n672, n356, n623, n407);
or   g701 (n703, n375, n435, n402, n662);
xor  g702 (n682, n331, n623, n618, n349);
nand g703 (n716, n666, n617, n359, n663);
or   g704 (n721, n668, n397, n400, n434);
xnor g705 (n707, n658, n671, n469, n484);
nand g706 (n751, n408, n626, n429, n404);
xor  g707 (n743, n609, n425, n654, n333);
nor  g708 (n706, n314, n663, n668, n444);
or   g709 (n759, n378, n475, n608, n664);
nand g710 (n741, n665, n325, n624, n611);
nor  g711 (n695, n430, n332, n609, n674);
nor  g712 (n756, n388, n667, n409, n427);
xnor g713 (n714, n657, n628, n348, n392);
nor  g714 (n718, n478, n415, n361, n607);
or   g715 (n727, n482, n488, n671, n456);
or   g716 (n688, n611, n442, n414, n470);
or   g717 (n701, n384, n353, n460, n472);
or   g718 (n729, n483, n665, n455, n464);
and  g719 (n680, n605, n477, n428, n666);
and  g720 (n733, n418, n625, n389, n620);
nor  g721 (n757, n670, n626, n606, n347);
nor  g722 (n734, n674, n661, n338, n387);
and  g723 (n715, n673, n487, n619, n654);
nand g724 (n686, n610, n328, n659, n671);
nor  g725 (n742, n656, n432, n616, n360);
or   g726 (n676, n383, n663, n411, n667);
or   g727 (n735, n628, n403, n669, n629);
and  g728 (n709, n620, n372, n660, n357);
and  g729 (n752, n352, n667, n668, n316);
not  g730 (n791, n716);
buf  g731 (n772, n710);
buf  g732 (n783, n695);
not  g733 (n794, n684);
not  g734 (n790, n700);
buf  g735 (n817, n683);
buf  g736 (n804, n499);
not  g737 (n781, n704);
buf  g738 (n798, n516);
not  g739 (n779, n500);
not  g740 (n807, n633);
not  g741 (n784, n716);
buf  g742 (n815, n634);
buf  g743 (n822, n715);
not  g744 (n824, n692);
not  g745 (n792, n696);
buf  g746 (n818, n685);
buf  g747 (n763, n688);
buf  g748 (n770, n710);
not  g749 (n795, n677);
not  g750 (n799, n526);
buf  g751 (n816, n522);
buf  g752 (n769, n687);
not  g753 (n787, n708);
buf  g754 (n805, n709);
buf  g755 (n786, n521);
buf  g756 (n820, n524);
not  g757 (n773, n698);
not  g758 (n774, n679);
not  g759 (n780, n502);
buf  g760 (n777, n711);
not  g761 (n793, n493);
not  g762 (n775, n693);
not  g763 (n802, n689);
not  g764 (n768, n705);
not  g765 (n803, n718);
not  g766 (n806, n501);
not  g767 (n764, n713);
not  g768 (n796, n503);
buf  g769 (n778, n676);
buf  g770 (n797, n519);
buf  g771 (n776, n713);
buf  g772 (n771, n633);
buf  g773 (n814, n717);
not  g774 (n788, n714);
buf  g775 (n789, n697);
or   g776 (n801, n498, n675);
xor  g777 (n782, n711, n699);
nor  g778 (n813, n505, n497, n682, n513);
nand g779 (n819, n492, n715, n509, n507);
or   g780 (n809, n709, n494, n504, n694);
xor  g781 (n766, n716, n703, n713, n527);
xnor g782 (n785, n714, n512, n518, n707);
and  g783 (n811, n491, n633, n634, n525);
xnor g784 (n808, n496, n715, n495, n514);
xor  g785 (n765, n717, n517, n701, n702);
xor  g786 (n823, n709, n686, n690, n523);
xnor g787 (n767, n711, n528, n529, n712);
nor  g788 (n800, n510, n508, n710, n706);
xor  g789 (n812, n506, n515, n680, n717);
xor  g790 (n821, n712, n712, n691, n511);
and  g791 (n810, n678, n681, n714, n520);
buf  g792 (n839, n541);
buf  g793 (n849, n577);
not  g794 (n844, n769);
buf  g795 (n847, n554);
buf  g796 (n846, n766);
buf  g797 (n831, n560);
not  g798 (n833, n767);
not  g799 (n835, n718);
nand g800 (n850, n570, n536, n559, n532);
and  g801 (n828, n530, n770, n546, n782);
xor  g802 (n842, n768, n780, n779, n783);
nor  g803 (n845, n776, n566, n788, n555);
xnor g804 (n834, n542, n548, n540, n545);
xor  g805 (n841, n574, n773, n719);
nor  g806 (n825, n543, n572, n557, n549);
xnor g807 (n827, n781, n569, n573, n763);
xnor g808 (n838, n533, n538, n765, n771);
and  g809 (n829, n556, n547, n564, n778);
xnor g810 (n836, n565, n786, n578, n775);
nand g811 (n830, n553, n774, n563, n535);
and  g812 (n840, n552, n539, n719, n568);
xor  g813 (n843, n777, n785, n784, n562);
nand g814 (n826, n764, n576, n772, n551);
xnor g815 (n837, n567, n787, n558, n571);
nand g816 (n832, n544, n531, n537, n575);
xnor g817 (n848, n561, n550, n718, n534);
buf  g818 (n853, n720);
not  g819 (n851, n720);
buf  g820 (n852, n825);
not  g821 (n854, n825);
not  g822 (n858, n853);
buf  g823 (n864, n851);
buf  g824 (n855, n851);
not  g825 (n856, n854);
buf  g826 (n862, n852);
not  g827 (n859, n853);
not  g828 (n868, n720);
not  g829 (n861, n852);
buf  g830 (n860, n852);
buf  g831 (n867, n854);
buf  g832 (n869, n851);
not  g833 (n863, n851);
buf  g834 (n866, n853);
not  g835 (n857, n852);
xor  g836 (n865, n854, n853);
or   g837 (n890, n828, n828, n735, n730);
nand g838 (n891, n587, n731, n723, n727);
and  g839 (n873, n587, n723, n860, n732);
xnor g840 (n871, n827, n869, n587, n826);
nand g841 (n874, n857, n863, n868, n866);
nand g842 (n877, n735, n581, n829, n864);
or   g843 (n892, n729, n830, n733);
or   g844 (n894, n830, n733, n722, n589);
nor  g845 (n876, n826, n722, n721, n734);
nand g846 (n881, n864, n866, n734, n868);
or   g847 (n870, n869, n731, n722, n866);
xor  g848 (n888, n724, n827, n590, n859);
or   g849 (n875, n731, n827, n864, n580);
nand g850 (n879, n861, n867, n828, n723);
nor  g851 (n883, n727, n585, n589, n726);
and  g852 (n885, n863, n828, n826, n829);
and  g853 (n889, n725, n830, n855, n858);
xor  g854 (n896, n588, n868, n582, n721);
and  g855 (n882, n726, n588, n730, n729);
xnor g856 (n878, n735, n865, n584, n730);
nor  g857 (n872, n826, n728, n869, n734);
or   g858 (n898, n863, n724, n732, n589);
or   g859 (n893, n867, n736, n865, n588);
xor  g860 (n897, n721, n867, n729, n725);
nor  g861 (n884, n583, n856, n725, n579);
nor  g862 (n895, n733, n726, n724, n829);
xor  g863 (n886, n827, n586, n728);
nor  g864 (n880, n586, n829, n727, n831);
xnor g865 (n887, n862, n865, n732, n590);
and  g866 (n919, n760, n742, n751, n750);
xnor g867 (n907, n759, n870, n748, n756);
xor  g868 (n901, n739, n873, n760, n756);
nand g869 (n911, n871, n747, n742, n872);
xor  g870 (n916, n875, n754, n752, n753);
xnor g871 (n918, n757, n741, n737, n758);
and  g872 (n912, n750, n742, n757, n874);
or   g873 (n906, n739, n755, n874, n743);
nand g874 (n925, n751, n754, n757, n876);
nor  g875 (n922, n746, n759, n747, n762);
and  g876 (n903, n743, n738, n751, n737);
nor  g877 (n920, n755, n755, n738, n746);
xor  g878 (n904, n753, n871, n875, n745);
xor  g879 (n914, n743, n870, n748, n750);
nand g880 (n909, n741, n873, n761, n740);
nand g881 (n921, n870, n871, n752, n873);
xor  g882 (n915, n744, n756, n749, n870);
or   g883 (n910, n749, n745, n761, n760);
nand g884 (n923, n740, n738, n758, n744);
xor  g885 (n902, n874, n744, n739, n736);
xnor g886 (n924, n872, n746, n759, n762);
xnor g887 (n917, n736, n752, n761, n762);
or   g888 (n899, n876, n758, n741, n762);
xnor g889 (n913, n748, n875, n749);
nor  g890 (n905, n745, n872, n740);
nand g891 (n908, n747, n754, n876, n737);
xnor g892 (n900, n873, n874, n753, n871);
xor  g893 (n949, n907, n821, n635, n905);
xnor g894 (n945, n923, n823, n634, n804);
and  g895 (n937, n800, n594, n922, n902);
or   g896 (n938, n912, n803, n813, n636);
and  g897 (n926, n597, n810, n821, n904);
xor  g898 (n928, n921, n920, n805, n796);
or   g899 (n946, n921, n913, n636, n592);
and  g900 (n952, n635, n790, n803, n810);
and  g901 (n950, n807, n922, n923, n814);
or   g902 (n953, n822, n917, n901, n818);
or   g903 (n932, n923, n819, n797, n793);
nor  g904 (n942, n802, n823, n811, n824);
xnor g905 (n947, n798, n808, n918, n593);
xnor g906 (n958, n599, n817, n812, n903);
xnor g907 (n954, n925, n596, n818, n906);
xor  g908 (n959, n635, n805, n636, n808);
xor  g909 (n931, n924, n824, n801, n593);
and  g910 (n955, n820, n821, n915, n791);
xor  g911 (n936, n634, n795, n597, n925);
xor  g912 (n941, n820, n916, n924);
nand g913 (n927, n590, n925, n817, n813);
and  g914 (n960, n802, n591, n799, n798);
and  g915 (n943, n922, n819, n909, n807);
and  g916 (n944, n598, n595, n806, n900);
and  g917 (n940, n811, n910, n597, n792);
xor  g918 (n934, n911, n921, n801, n794);
and  g919 (n957, n593, n822, n809, n635);
xnor g920 (n956, n594, n595, n809, n820);
and  g921 (n930, n592, n789, n806, n598);
xor  g922 (n939, n599, n854, n822, n919);
xor  g923 (n933, n914, n592, n818, n816);
xor  g924 (n929, n800, n595, n816, n591);
xor  g925 (n962, n824, n814, n596, n799);
xor  g926 (n961, n815, n819, n812, n636);
nand g927 (n948, n823, n804, n908, n816);
xor  g928 (n951, n594, n591, n598, n596);
nand g929 (n935, n817, n815, n899, n599);
xnor g930 (n1006, n881, n888, n842, n897);
xor  g931 (n976, n891, n948, n850, n886);
or   g932 (n1012, n885, n957, n938, n960);
xnor g933 (n978, n961, n893, n831, n849);
and  g934 (n965, n845, n846, n884, n950);
xor  g935 (n997, n887, n888, n849, n953);
xor  g936 (n980, n945, n844, n879, n881);
xnor g937 (n999, n833, n883, n839, n842);
and  g938 (n995, n847, n846, n953);
nand g939 (n987, n847, n878, n841, n897);
or   g940 (n1009, n885, n896, n957, n898);
nand g941 (n983, n960, n954, n845, n895);
xor  g942 (n1003, n848, n893, n952, n846);
nand g943 (n973, n843, n894, n842);
nand g944 (n986, n959, n947, n883, n936);
nor  g945 (n1000, n844, n850, n836, n946);
or   g946 (n977, n949, n838, n880, n962);
nand g947 (n996, n961, n956, n953, n962);
nor  g948 (n1015, n834, n898, n896, n952);
and  g949 (n982, n962, n877, n892, n837);
nor  g950 (n971, n943, n885, n881, n882);
xor  g951 (n964, n942, n877, n892, n890);
xnor g952 (n1017, n888, n895, n886, n836);
nor  g953 (n991, n950, n850, n835, n881);
nor  g954 (n968, n951, n894, n878, n843);
xnor g955 (n988, n832, n944, n847, n879);
nor  g956 (n1007, n833, n849, n841, n957);
or   g957 (n967, n832, n890, n889);
and  g958 (n992, n898, n951, n955, n889);
nand g959 (n993, n891, n849, n887);
and  g960 (n1001, n835, n836, n887, n956);
xnor g961 (n1014, n884, n840, n834, n883);
xnor g962 (n998, n838, n891, n894, n844);
xor  g963 (n975, n882, n839, n843, n884);
xor  g964 (n1002, n949, n940, n836, n842);
xnor g965 (n1005, n850, n833, n889, n893);
or   g966 (n969, n835, n960, n955, n951);
nor  g967 (n963, n835, n843, n955, n892);
xnor g968 (n972, n961, n959, n833, n844);
xnor g969 (n979, n949, n959, n879, n886);
nand g970 (n985, n878, n956, n888, n845);
xor  g971 (n1011, n882, n958, n848, n895);
and  g972 (n1010, n834, n831, n891, n832);
xnor g973 (n1018, n838, n831, n958, n892);
xor  g974 (n966, n883, n898, n877, n837);
nand g975 (n970, n895, n837, n893, n845);
or   g976 (n974, n879, n839, n838);
or   g977 (n1008, n954, n948, n896);
nand g978 (n1004, n958, n939, n848, n880);
nor  g979 (n990, n886, n897, n841, n832);
nor  g980 (n981, n834, n884, n937, n882);
nand g981 (n989, n880, n878, n840, n877);
nor  g982 (n994, n897, n876, n837, n890);
xnor g983 (n1016, n889, n840, n885, n950);
or   g984 (n984, n952, n840, n954, n941);
nor  g985 (n1013, n848, n880, n847, n841);
and  g986 (n1027, n1003, n1001, n981, n983);
xnor g987 (n1028, n1014, n972, n1018, n996);
or   g988 (n1024, n975, n965, n967, n982);
or   g989 (n1031, n1015, n1009, n991, n997);
xnor g990 (n1026, n988, n992, n976, n968);
xor  g991 (n1019, n995, n1016, n1013, n1017);
nor  g992 (n1021, n990, n980, n973, n1012);
xnor g993 (n1025, n1002, n963, n978, n979);
and  g994 (n1032, n970, n994, n984, n987);
or   g995 (n1023, n966, n971, n1007, n977);
and  g996 (n1030, n998, n999, n969, n1006);
xor  g997 (n1022, n1011, n989, n1004, n1008);
xor  g998 (n1020, n1005, n1010, n1000, n974);
xor  g999 (n1029, n993, n985, n964, n986);
endmodule