// Benchmark C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\4_6_generated_stats\Stat_1000_154 written by SynthGen on 2021/04/05 11:08:34
module C:\Users\Lucas Nestor\Documents\osu\sp21\esl\circuit_generation\Stats\4_6_generated_stats\Stat_1000_154 ( n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32,
 n981, n976, n959, n969, n961, n978, n972, n974,
 n970, n973, n966, n971, n983, n965, n982, n963,
 n985, n977, n960, n968, n1022, n1030, n1032, n1021,
 n1024, n1031, n1025, n1029, n1027, n1028, n1026, n1023);

input n1, n2, n3, n4, n5, n6, n7, n8,
 n9, n10, n11, n12, n13, n14, n15, n16,
 n17, n18, n19, n20, n21, n22, n23, n24,
 n25, n26, n27, n28, n29, n30, n31, n32;

output n981, n976, n959, n969, n961, n978, n972, n974,
 n970, n973, n966, n971, n983, n965, n982, n963,
 n985, n977, n960, n968, n1022, n1030, n1032, n1021,
 n1024, n1031, n1025, n1029, n1027, n1028, n1026, n1023;

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
 n921, n922, n923, n924, n925, n926, n927, n928,
 n929, n930, n931, n932, n933, n934, n935, n936,
 n937, n938, n939, n940, n941, n942, n943, n944,
 n945, n946, n947, n948, n949, n950, n951, n952,
 n953, n954, n955, n956, n957, n958, n962, n964,
 n967, n975, n979, n980, n984, n986, n987, n988,
 n989, n990, n991, n992, n993, n994, n995, n996,
 n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
 n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012,
 n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020;

not  g0 (n62, n14);
not  g1 (n59, n11);
not  g2 (n112, n5);
buf  g3 (n33, n26);
buf  g4 (n94, n19);
buf  g5 (n48, n20);
not  g6 (n149, n2);
buf  g7 (n63, n13);
not  g8 (n86, n2);
not  g9 (n46, n25);
buf  g10 (n148, n22);
not  g11 (n66, n7);
buf  g12 (n41, n29);
not  g13 (n141, n9);
buf  g14 (n95, n17);
not  g15 (n42, n10);
buf  g16 (n151, n18);
buf  g17 (n134, n26);
buf  g18 (n113, n1);
buf  g19 (n103, n4);
not  g20 (n89, n15);
buf  g21 (n64, n12);
buf  g22 (n138, n32);
buf  g23 (n43, n1);
not  g24 (n101, n28);
not  g25 (n39, n24);
buf  g26 (n58, n24);
buf  g27 (n72, n19);
not  g28 (n84, n30);
buf  g29 (n92, n20);
buf  g30 (n73, n9);
buf  g31 (n49, n3);
buf  g32 (n36, n8);
not  g33 (n99, n11);
not  g34 (n126, n31);
not  g35 (n82, n5);
not  g36 (n109, n28);
buf  g37 (n37, n23);
not  g38 (n106, n13);
not  g39 (n156, n12);
buf  g40 (n91, n20);
buf  g41 (n52, n21);
not  g42 (n108, n3);
not  g43 (n107, n28);
not  g44 (n60, n19);
not  g45 (n140, n29);
buf  g46 (n50, n4);
not  g47 (n90, n30);
not  g48 (n74, n10);
buf  g49 (n133, n22);
buf  g50 (n71, n24);
not  g51 (n77, n27);
not  g52 (n104, n16);
buf  g53 (n155, n12);
not  g54 (n81, n17);
not  g55 (n157, n6);
not  g56 (n145, n15);
buf  g57 (n160, n9);
not  g58 (n150, n12);
buf  g59 (n122, n27);
not  g60 (n100, n3);
buf  g61 (n47, n4);
buf  g62 (n142, n23);
not  g63 (n130, n3);
not  g64 (n132, n29);
not  g65 (n131, n22);
buf  g66 (n35, n15);
not  g67 (n68, n19);
buf  g68 (n143, n21);
not  g69 (n111, n22);
not  g70 (n61, n7);
not  g71 (n96, n4);
buf  g72 (n51, n9);
buf  g73 (n98, n6);
buf  g74 (n118, n17);
not  g75 (n44, n1);
buf  g76 (n57, n27);
buf  g77 (n80, n6);
buf  g78 (n158, n31);
not  g79 (n144, n6);
not  g80 (n45, n10);
not  g81 (n127, n1);
not  g82 (n117, n27);
not  g83 (n67, n16);
buf  g84 (n135, n10);
buf  g85 (n136, n7);
buf  g86 (n105, n30);
buf  g87 (n124, n13);
not  g88 (n76, n8);
buf  g89 (n38, n29);
not  g90 (n128, n25);
buf  g91 (n85, n32);
not  g92 (n116, n23);
not  g93 (n137, n25);
buf  g94 (n70, n8);
not  g95 (n87, n28);
buf  g96 (n88, n15);
not  g97 (n102, n32);
buf  g98 (n154, n18);
buf  g99 (n93, n26);
buf  g100 (n65, n21);
buf  g101 (n53, n16);
buf  g102 (n147, n21);
not  g103 (n120, n16);
not  g104 (n79, n26);
not  g105 (n114, n30);
buf  g106 (n153, n23);
buf  g107 (n125, n18);
not  g108 (n123, n7);
buf  g109 (n110, n18);
buf  g110 (n40, n5);
buf  g111 (n83, n17);
buf  g112 (n129, n24);
buf  g113 (n54, n25);
not  g114 (n115, n5);
buf  g115 (n34, n14);
buf  g116 (n55, n11);
not  g117 (n69, n14);
not  g118 (n139, n2);
buf  g119 (n75, n2);
buf  g120 (n97, n20);
not  g121 (n146, n11);
buf  g122 (n78, n14);
not  g123 (n152, n31);
not  g124 (n121, n13);
buf  g125 (n56, n32);
buf  g126 (n159, n31);
not  g127 (n119, n8);
buf  g128 (n318, n40);
buf  g129 (n250, n51);
not  g130 (n244, n84);
not  g131 (n339, n61);
not  g132 (n271, n93);
buf  g133 (n192, n94);
not  g134 (n463, n87);
not  g135 (n414, n94);
buf  g136 (n406, n98);
not  g137 (n377, n80);
buf  g138 (n447, n44);
not  g139 (n472, n64);
not  g140 (n188, n103);
not  g141 (n213, n98);
buf  g142 (n410, n45);
not  g143 (n465, n99);
not  g144 (n415, n50);
not  g145 (n223, n68);
not  g146 (n400, n65);
buf  g147 (n428, n76);
not  g148 (n220, n92);
not  g149 (n373, n39);
not  g150 (n227, n73);
not  g151 (n245, n87);
buf  g152 (n198, n67);
not  g153 (n429, n39);
buf  g154 (n385, n37);
not  g155 (n430, n43);
not  g156 (n196, n48);
not  g157 (n366, n70);
buf  g158 (n222, n103);
not  g159 (n446, n108);
buf  g160 (n181, n72);
not  g161 (n405, n109);
buf  g162 (n233, n60);
not  g163 (n289, n35);
not  g164 (n379, n80);
not  g165 (n403, n110);
buf  g166 (n243, n46);
buf  g167 (n176, n60);
buf  g168 (n298, n96);
buf  g169 (n407, n78);
buf  g170 (n388, n36);
not  g171 (n255, n101);
buf  g172 (n334, n54);
not  g173 (n445, n89);
buf  g174 (n320, n86);
buf  g175 (n349, n42);
not  g176 (n288, n81);
buf  g177 (n285, n47);
not  g178 (n272, n71);
buf  g179 (n356, n88);
not  g180 (n440, n105);
not  g181 (n380, n58);
not  g182 (n208, n41);
not  g183 (n260, n99);
not  g184 (n185, n45);
not  g185 (n342, n58);
not  g186 (n221, n87);
not  g187 (n467, n102);
buf  g188 (n392, n38);
not  g189 (n319, n67);
not  g190 (n471, n49);
not  g191 (n376, n65);
not  g192 (n393, n33);
buf  g193 (n276, n90);
not  g194 (n335, n34);
buf  g195 (n402, n54);
not  g196 (n351, n98);
not  g197 (n275, n40);
buf  g198 (n206, n75);
buf  g199 (n470, n93);
not  g200 (n182, n105);
not  g201 (n404, n40);
buf  g202 (n168, n63);
buf  g203 (n346, n79);
not  g204 (n209, n61);
buf  g205 (n417, n57);
buf  g206 (n273, n96);
not  g207 (n332, n53);
buf  g208 (n418, n88);
buf  g209 (n241, n74);
buf  g210 (n237, n35);
not  g211 (n193, n104);
not  g212 (n432, n77);
buf  g213 (n306, n68);
buf  g214 (n341, n44);
not  g215 (n210, n78);
not  g216 (n161, n81);
not  g217 (n473, n43);
buf  g218 (n232, n107);
not  g219 (n300, n102);
not  g220 (n278, n80);
not  g221 (n304, n46);
not  g222 (n308, n109);
buf  g223 (n202, n48);
not  g224 (n256, n74);
buf  g225 (n189, n73);
not  g226 (n266, n100);
buf  g227 (n448, n110);
not  g228 (n167, n65);
not  g229 (n216, n107);
not  g230 (n283, n38);
not  g231 (n230, n101);
buf  g232 (n437, n74);
not  g233 (n229, n89);
buf  g234 (n282, n97);
not  g235 (n372, n37);
not  g236 (n426, n56);
not  g237 (n184, n57);
buf  g238 (n186, n53);
not  g239 (n458, n108);
not  g240 (n169, n44);
not  g241 (n452, n92);
not  g242 (n324, n51);
buf  g243 (n343, n103);
buf  g244 (n360, n72);
not  g245 (n171, n60);
buf  g246 (n329, n96);
not  g247 (n201, n41);
buf  g248 (n228, n90);
not  g249 (n424, n36);
not  g250 (n162, n85);
buf  g251 (n163, n102);
not  g252 (n205, n108);
buf  g253 (n225, n71);
not  g254 (n441, n37);
buf  g255 (n179, n79);
buf  g256 (n174, n82);
buf  g257 (n173, n83);
buf  g258 (n468, n83);
not  g259 (n199, n104);
not  g260 (n257, n66);
buf  g261 (n338, n64);
not  g262 (n164, n55);
not  g263 (n365, n41);
not  g264 (n313, n84);
not  g265 (n390, n57);
not  g266 (n270, n103);
not  g267 (n328, n93);
buf  g268 (n358, n34);
not  g269 (n369, n33);
buf  g270 (n262, n47);
buf  g271 (n361, n100);
buf  g272 (n327, n106);
buf  g273 (n195, n100);
buf  g274 (n226, n63);
buf  g275 (n239, n38);
buf  g276 (n170, n91);
buf  g277 (n389, n58);
buf  g278 (n333, n49);
buf  g279 (n317, n55);
buf  g280 (n409, n102);
not  g281 (n190, n69);
buf  g282 (n457, n62);
not  g283 (n314, n76);
not  g284 (n235, n83);
not  g285 (n427, n50);
not  g286 (n362, n110);
buf  g287 (n382, n79);
buf  g288 (n269, n54);
not  g289 (n302, n99);
buf  g290 (n419, n91);
buf  g291 (n279, n42);
buf  g292 (n316, n72);
not  g293 (n453, n46);
not  g294 (n197, n48);
not  g295 (n178, n35);
not  g296 (n461, n106);
buf  g297 (n194, n66);
not  g298 (n462, n86);
buf  g299 (n175, n55);
not  g300 (n251, n94);
not  g301 (n310, n78);
buf  g302 (n284, n106);
not  g303 (n224, n45);
buf  g304 (n207, n51);
not  g305 (n305, n58);
buf  g306 (n394, n43);
buf  g307 (n259, n61);
not  g308 (n177, n105);
buf  g309 (n435, n109);
not  g310 (n263, n73);
buf  g311 (n165, n82);
not  g312 (n200, n56);
buf  g313 (n309, n49);
not  g314 (n420, n106);
buf  g315 (n326, n100);
buf  g316 (n413, n52);
buf  g317 (n395, n76);
not  g318 (n340, n71);
buf  g319 (n423, n69);
buf  g320 (n274, n90);
buf  g321 (n399, n34);
not  g322 (n354, n50);
not  g323 (n294, n78);
buf  g324 (n248, n69);
buf  g325 (n466, n40);
not  g326 (n412, n84);
not  g327 (n421, n34);
buf  g328 (n203, n45);
buf  g329 (n383, n99);
buf  g330 (n293, n107);
buf  g331 (n456, n52);
buf  g332 (n425, n87);
buf  g333 (n443, n104);
not  g334 (n396, n89);
not  g335 (n434, n76);
not  g336 (n242, n92);
not  g337 (n297, n84);
not  g338 (n247, n70);
buf  g339 (n246, n66);
not  g340 (n368, n37);
not  g341 (n217, n96);
not  g342 (n166, n55);
not  g343 (n330, n94);
buf  g344 (n433, n62);
not  g345 (n439, n44);
not  g346 (n449, n33);
not  g347 (n371, n85);
buf  g348 (n348, n83);
not  g349 (n436, n63);
not  g350 (n442, n88);
not  g351 (n264, n95);
buf  g352 (n234, n92);
buf  g353 (n384, n86);
buf  g354 (n180, n36);
buf  g355 (n455, n95);
not  g356 (n265, n69);
buf  g357 (n367, n73);
not  g358 (n336, n95);
buf  g359 (n291, n85);
not  g360 (n355, n77);
not  g361 (n252, n104);
buf  g362 (n350, n97);
buf  g363 (n321, n110);
buf  g364 (n438, n43);
not  g365 (n258, n67);
buf  g366 (n287, n91);
buf  g367 (n391, n98);
not  g368 (n214, n39);
buf  g369 (n204, n53);
not  g370 (n219, n75);
buf  g371 (n292, n89);
not  g372 (n312, n35);
buf  g373 (n268, n82);
buf  g374 (n450, n42);
buf  g375 (n311, n81);
not  g376 (n299, n56);
not  g377 (n303, n60);
not  g378 (n322, n93);
not  g379 (n345, n67);
buf  g380 (n374, n61);
not  g381 (n357, n71);
not  g382 (n236, n101);
not  g383 (n416, n72);
not  g384 (n240, n86);
not  g385 (n386, n68);
not  g386 (n254, n108);
not  g387 (n290, n62);
buf  g388 (n231, n63);
buf  g389 (n460, n66);
buf  g390 (n315, n51);
not  g391 (n238, n36);
not  g392 (n431, n90);
buf  g393 (n337, n68);
buf  g394 (n370, n54);
buf  g395 (n267, n47);
not  g396 (n296, n77);
not  g397 (n253, n59);
not  g398 (n183, n52);
buf  g399 (n211, n107);
buf  g400 (n459, n75);
buf  g401 (n295, n59);
not  g402 (n378, n109);
not  g403 (n398, n70);
buf  g404 (n469, n88);
not  g405 (n397, n77);
buf  g406 (n353, n91);
not  g407 (n344, n52);
not  g408 (n444, n59);
buf  g409 (n281, n101);
buf  g410 (n387, n95);
not  g411 (n411, n85);
not  g412 (n375, n50);
buf  g413 (n451, n81);
buf  g414 (n352, n70);
buf  g415 (n249, n56);
buf  g416 (n364, n97);
not  g417 (n187, n75);
not  g418 (n280, n80);
not  g419 (n172, n41);
buf  g420 (n191, n64);
buf  g421 (n347, n65);
not  g422 (n277, n53);
buf  g423 (n323, n57);
buf  g424 (n363, n59);
buf  g425 (n218, n105);
buf  g426 (n359, n38);
not  g427 (n454, n97);
buf  g428 (n261, n33);
buf  g429 (n331, n49);
not  g430 (n401, n47);
not  g431 (n422, n74);
buf  g432 (n307, n82);
buf  g433 (n381, n64);
not  g434 (n286, n46);
buf  g435 (n301, n111);
not  g436 (n212, n42);
buf  g437 (n464, n79);
not  g438 (n325, n48);
not  g439 (n215, n39);
not  g440 (n408, n62);
buf  g441 (n484, n188);
not  g442 (n486, n183);
buf  g443 (n498, n177);
buf  g444 (n476, n185);
not  g445 (n489, n182);
buf  g446 (n488, n173);
buf  g447 (n492, n174);
buf  g448 (n480, n161);
not  g449 (n487, n170);
buf  g450 (n485, n167);
not  g451 (n483, n178);
not  g452 (n495, n168);
not  g453 (n482, n184);
not  g454 (n496, n186);
not  g455 (n494, n189);
not  g456 (n497, n165);
buf  g457 (n479, n164);
buf  g458 (n474, n176);
buf  g459 (n481, n166);
not  g460 (n475, n162);
not  g461 (n477, n179);
buf  g462 (n490, n171);
not  g463 (n493, n175);
buf  g464 (n491, n190);
buf  g465 (n499, n181);
not  g466 (n500, n187);
xnor g467 (n501, n172, n169);
or   g468 (n478, n180, n163);
buf  g469 (n531, n117);
buf  g470 (n511, n131);
buf  g471 (n516, n115);
buf  g472 (n558, n144);
buf  g473 (n527, n127);
buf  g474 (n507, n501);
not  g475 (n519, n482);
not  g476 (n553, n138);
nor  g477 (n513, n475, n123, n113, n496);
and  g478 (n508, n495, n118, n192, n132);
nand g479 (n533, n501, n126, n138, n139);
nor  g480 (n517, n117, n139, n499, n201);
and  g481 (n520, n144, n142, n121, n497);
nor  g482 (n518, n119, n493, n487, n121);
nand g483 (n525, n121, n129, n122);
xor  g484 (n556, n477, n140, n136, n474);
xnor g485 (n523, n143, n491, n114, n123);
nand g486 (n522, n500, n129, n124, n134);
and  g487 (n503, n134, n493, n143, n481);
or   g488 (n512, n494, n498, n120, n485);
and  g489 (n552, n492, n128, n113, n120);
xnor g490 (n543, n112, n499, n135, n495);
xnor g491 (n559, n134, n496, n116, n140);
nand g492 (n551, n143, n120, n131, n144);
nand g493 (n555, n126, n125, n492, n122);
or   g494 (n509, n138, n130, n133, n195);
xor  g495 (n524, n116, n136, n122, n128);
nor  g496 (n536, n116, n492, n498, n112);
nand g497 (n539, n498, n497, n478, n489);
and  g498 (n545, n498, n124, n136, n141);
and  g499 (n538, n493, n115, n117, n202);
nand g500 (n542, n493, n143, n198, n116);
nor  g501 (n532, n145, n133, n142);
or   g502 (n530, n111, n114, n124, n486);
nand g503 (n505, n199, n127, n130, n118);
xor  g504 (n506, n113, n119, n112);
or   g505 (n526, n128, n194, n132, n200);
and  g506 (n537, n115, n114, n495, n120);
xnor g507 (n502, n500, n141, n135, n483);
nand g508 (n547, n118, n121, n494, n196);
xor  g509 (n544, n494, n111, n128, n134);
and  g510 (n540, n142, n480, n139, n127);
nor  g511 (n515, n123, n137, n132, n145);
and  g512 (n557, n484, n133, n136, n500);
nor  g513 (n549, n494, n488, n112, n140);
xnor g514 (n528, n132, n124, n137, n497);
and  g515 (n554, n496, n479, n141, n144);
or   g516 (n529, n119, n135, n130, n133);
nor  g517 (n535, n495, n122, n139, n126);
xor  g518 (n548, n499, n123, n135, n131);
nand g519 (n514, n492, n130, n127, n118);
and  g520 (n541, n137, n113, n131, n499);
xor  g521 (n504, n126, n193, n501, n137);
or   g522 (n546, n197, n125, n501, n140);
xor  g523 (n521, n497, n500, n125, n145);
or   g524 (n534, n490, n115, n191, n125);
and  g525 (n510, n114, n138, n141, n476);
nand g526 (n550, n496, n111, n117, n129);
buf  g527 (n785, n147);
buf  g528 (n686, n503);
buf  g529 (n692, n531);
buf  g530 (n595, n516);
not  g531 (n772, n550);
buf  g532 (n777, n156);
buf  g533 (n721, n537);
not  g534 (n663, n517);
buf  g535 (n563, n524);
not  g536 (n791, n512);
buf  g537 (n766, n550);
buf  g538 (n742, n558);
not  g539 (n617, n513);
not  g540 (n580, n214);
buf  g541 (n734, n555);
not  g542 (n591, n559);
not  g543 (n572, n507);
buf  g544 (n653, n547);
buf  g545 (n781, n535);
buf  g546 (n612, n146);
buf  g547 (n751, n556);
buf  g548 (n672, n149);
not  g549 (n724, n148);
not  g550 (n630, n555);
not  g551 (n626, n528);
buf  g552 (n589, n216);
buf  g553 (n763, n250);
buf  g554 (n631, n554);
buf  g555 (n670, n545);
buf  g556 (n671, n535);
buf  g557 (n750, n515);
buf  g558 (n654, n552);
not  g559 (n741, n151);
not  g560 (n752, n502);
buf  g561 (n584, n152);
not  g562 (n632, n242);
buf  g563 (n786, n543);
buf  g564 (n638, n158);
not  g565 (n702, n156);
buf  g566 (n657, n548);
not  g567 (n790, n551);
not  g568 (n652, n542);
buf  g569 (n755, n530);
buf  g570 (n603, n552);
not  g571 (n743, n527);
not  g572 (n758, n249);
buf  g573 (n634, n526);
not  g574 (n677, n245);
buf  g575 (n737, n504);
buf  g576 (n636, n228);
buf  g577 (n602, n531);
not  g578 (n695, n506);
not  g579 (n687, n502);
not  g580 (n649, n516);
not  g581 (n756, n515);
not  g582 (n712, n146);
buf  g583 (n637, n505);
buf  g584 (n749, n514);
not  g585 (n604, n238);
buf  g586 (n633, n522);
not  g587 (n757, n536);
not  g588 (n764, n153);
not  g589 (n629, n510);
buf  g590 (n662, n517);
buf  g591 (n658, n155);
buf  g592 (n568, n224);
buf  g593 (n641, n528);
not  g594 (n588, n240);
buf  g595 (n646, n241);
not  g596 (n779, n154);
buf  g597 (n709, n527);
buf  g598 (n661, n541);
buf  g599 (n645, n540);
buf  g600 (n600, n531);
not  g601 (n708, n212);
buf  g602 (n625, n523);
not  g603 (n780, n235);
not  g604 (n620, n544);
buf  g605 (n583, n545);
buf  g606 (n747, n156);
not  g607 (n782, n514);
buf  g608 (n674, n548);
buf  g609 (n697, n523);
buf  g610 (n570, n237);
not  g611 (n759, n219);
buf  g612 (n754, n530);
buf  g613 (n628, n203);
not  g614 (n680, n155);
not  g615 (n726, n159);
not  g616 (n691, n513);
not  g617 (n593, n511);
buf  g618 (n668, n157);
not  g619 (n562, n518);
buf  g620 (n567, n541);
not  g621 (n725, n152);
not  g622 (n784, n150);
buf  g623 (n770, n511);
buf  g624 (n748, n555);
buf  g625 (n738, n510);
not  g626 (n616, n553);
buf  g627 (n574, n559);
not  g628 (n566, n536);
buf  g629 (n615, n524);
not  g630 (n673, n521);
not  g631 (n710, n513);
buf  g632 (n699, n540);
not  g633 (n746, n525);
buf  g634 (n598, n538);
buf  g635 (n611, n502);
buf  g636 (n703, n523);
not  g637 (n582, n222);
buf  g638 (n643, n149);
not  g639 (n719, n538);
buf  g640 (n675, n557);
buf  g641 (n592, n543);
not  g642 (n660, n531);
buf  g643 (n635, n514);
not  g644 (n561, n248);
buf  g645 (n594, n529);
buf  g646 (n723, n508);
not  g647 (n607, n160);
buf  g648 (n745, n160);
buf  g649 (n619, n538);
buf  g650 (n676, n150);
buf  g651 (n585, n157);
buf  g652 (n605, n555);
not  g653 (n655, n146);
not  g654 (n560, n149);
buf  g655 (n573, n151);
buf  g656 (n776, n251);
not  g657 (n621, n509);
not  g658 (n656, n556);
buf  g659 (n774, n520);
not  g660 (n760, n537);
buf  g661 (n733, n543);
buf  g662 (n720, n551);
buf  g663 (n578, n530);
buf  g664 (n575, n558);
not  g665 (n684, n232);
buf  g666 (n762, n148);
not  g667 (n704, n146);
buf  g668 (n623, n511);
not  g669 (n648, n521);
not  g670 (n627, n148);
buf  g671 (n681, n151);
buf  g672 (n576, n151);
not  g673 (n647, n506);
buf  g674 (n775, n532);
buf  g675 (n640, n158);
buf  g676 (n773, n522);
not  g677 (n783, n549);
buf  g678 (n728, n544);
not  g679 (n688, n147);
not  g680 (n744, n547);
not  g681 (n606, n210);
buf  g682 (n644, n523);
not  g683 (n609, n230);
buf  g684 (n669, n550);
not  g685 (n608, n507);
not  g686 (n642, n145);
not  g687 (n665, n160);
buf  g688 (n689, n533);
not  g689 (n711, n508);
buf  g690 (n659, n533);
buf  g691 (n761, n233);
not  g692 (n736, n551);
buf  g693 (n618, n534);
not  g694 (n706, n532);
not  g695 (n622, n517);
buf  g696 (n768, n505);
buf  g697 (n767, n205);
not  g698 (n693, n217);
not  g699 (n678, n521);
not  g700 (n624, n503);
buf  g701 (n732, n544);
buf  g702 (n666, n553);
buf  g703 (n700, n518);
not  g704 (n613, n553);
not  g705 (n667, n528);
not  g706 (n694, n503);
buf  g707 (n718, n559);
not  g708 (n739, n211);
not  g709 (n713, n534);
buf  g710 (n587, n512);
buf  g711 (n597, n504);
buf  g712 (n564, n208);
not  g713 (n586, n554);
not  g714 (n565, n544);
not  g715 (n651, n541);
buf  g716 (n731, n158);
buf  g717 (n596, n150);
not  g718 (n610, n559);
not  g719 (n753, n524);
not  g720 (n788, n505);
not  g721 (n715, n527);
xor  g722 (n735, n502, n510, n507, n529);
or   g723 (n571, n534, n517, n231, n156);
xnor g724 (n730, n155, n519, n512);
nand g725 (n789, n550, n546, n558, n518);
nor  g726 (n664, n551, n158, n243, n503);
xnor g727 (n690, n508, n549, n227, n160);
or   g728 (n614, n547, n540, n539, n252);
xnor g729 (n696, n525, n539, n218, n507);
or   g730 (n771, n556, n244, n518, n509);
xnor g731 (n714, n526, n533, n553, n530);
xnor g732 (n590, n504, n508, n221, n209);
nor  g733 (n705, n215, n539, n510, n148);
nand g734 (n639, n557, n529, n556, n225);
xnor g735 (n701, n520, n548, n528, n153);
nand g736 (n729, n532, n504, n152, n534);
xnor g737 (n740, n526, n557, n525, n154);
and  g738 (n716, n226, n509, n229, n505);
xnor g739 (n601, n239, n552, n223, n546);
nand g740 (n682, n543, n147, n515, n540);
and  g741 (n581, n236, n539, n524, n537);
or   g742 (n579, n234, n516, n204, n506);
and  g743 (n683, n536, n552, n513, n549);
xor  g744 (n577, n157, n525, n511, n554);
xnor g745 (n778, n220, n522, n154, n159);
and  g746 (n650, n159, n542, n536, n546);
xnor g747 (n698, n527, n554, n520, n247);
or   g748 (n787, n520, n542, n155, n533);
xor  g749 (n707, n516, n537, n522, n150);
nor  g750 (n722, n557, n519, n207, n149);
xor  g751 (n769, n548, n515, n514, n542);
xor  g752 (n765, n519, n546, n213, n549);
or   g753 (n685, n558, n509, n529, n147);
or   g754 (n569, n153, n535, n154, n246);
and  g755 (n679, n545, n206, n535, n159);
nor  g756 (n717, n545, n506, n547, n521);
or   g757 (n599, n519, n538, n526, n532);
and  g758 (n727, n152, n157, n153, n541);
xnor g759 (n800, n264, n267, n260, n561);
or   g760 (n798, n259, n253, n261, n257);
and  g761 (n801, n562, n256, n258, n281);
xnor g762 (n792, n255, n560, n566, n282);
xor  g763 (n794, n254, n270, n567, n277);
nor  g764 (n799, n279, n568, n274, n280);
xnor g765 (n796, n263, n276, n268, n278);
xor  g766 (n793, n563, n273, n269, n266);
nor  g767 (n797, n271, n262, n265, n564);
xnor g768 (n795, n565, n275, n272, n569);
xnor g769 (n802, n304, n795, n793);
nor  g770 (n807, n294, n296, n285, n297);
or   g771 (n805, n797, n305, n798, n299);
xnor g772 (n809, n283, n292, n796, n290);
nand g773 (n808, n298, n291, n792, n293);
xnor g774 (n804, n302, n289, n288, n287);
xor  g775 (n803, n286, n295, n794, n301);
nand g776 (n806, n284, n300, n799, n303);
and  g777 (n811, n306, n804, n585);
or   g778 (n825, n584, n308, n318, n588);
or   g779 (n827, n322, n598, n571, n586);
and  g780 (n816, n806, n591, n578, n594);
nand g781 (n823, n581, n579, n328, n320);
nand g782 (n812, n334, n333, n808, n329);
and  g783 (n828, n590, n582, n600, n807);
nand g784 (n810, n574, n592, n593, n331);
or   g785 (n821, n803, n332, n583, n317);
nor  g786 (n817, n599, n325, n327, n806);
xor  g787 (n826, n806, n807, n570, n804);
nand g788 (n819, n321, n307, n573, n805);
xor  g789 (n814, n572, n802, n316, n804);
nand g790 (n824, n326, n319, n595, n597);
nor  g791 (n820, n596, n310, n309, n587);
xor  g792 (n815, n324, n311, n807, n330);
xnor g793 (n829, n805, n575, n576, n589);
nand g794 (n818, n807, n315, n580, n314);
and  g795 (n813, n806, n312, n577, n805);
xnor g796 (n822, n805, n323, n808, n313);
buf  g797 (n835, n815);
xnor g798 (n832, n606, n601, n816);
or   g799 (n834, n617, n613, n811, n615);
xnor g800 (n833, n814, n614, n612, n602);
or   g801 (n830, n813, n609, n604, n603);
nand g802 (n836, n611, n605, n812, n610);
nor  g803 (n831, n607, n810, n616, n608);
or   g804 (n839, n359, n360, n414, n832);
xnor g805 (n863, n378, n830, n356, n382);
xnor g806 (n849, n396, n366, n835, n349);
and  g807 (n842, n833, n836, n363, n348);
nand g808 (n855, n834, n834, n833, n402);
or   g809 (n840, n338, n370, n388, n834);
nand g810 (n860, n832, n397, n835, n409);
nor  g811 (n841, n369, n413, n350, n410);
nor  g812 (n862, n831, n368, n383, n830);
xor  g813 (n853, n358, n800, n831, n833);
or   g814 (n846, n400, n381, n354, n362);
nand g815 (n854, n830, n618, n833, n365);
and  g816 (n838, n831, n391, n364, n340);
and  g817 (n858, n836, n386, n385, n404);
xnor g818 (n850, n373, n387, n412, n336);
nor  g819 (n861, n380, n415, n394, n344);
and  g820 (n847, n367, n384, n343, n353);
or   g821 (n859, n361, n830, n832, n372);
and  g822 (n843, n379, n836, n403);
and  g823 (n844, n347, n835, n374, n834);
nand g824 (n852, n339, n352, n351, n389);
nor  g825 (n845, n393, n371, n406, n831);
nand g826 (n857, n345, n832, n405, n355);
xnor g827 (n837, n408, n407, n375, n411);
nand g828 (n864, n337, n357, n335, n342);
and  g829 (n856, n395, n399, n346, n377);
nand g830 (n851, n341, n392, n398, n390);
xnor g831 (n848, n801, n835, n376, n401);
buf  g832 (n888, n668);
nor  g833 (n918, n852, n631, n862);
nand g834 (n874, n718, n720, n749, n748);
xor  g835 (n928, n630, n844, n750, n768);
xnor g836 (n909, n681, n773, n623, n420);
nand g837 (n919, n688, n767, n847, n427);
nor  g838 (n956, n771, n762, n663, n637);
or   g839 (n923, n864, n652, n849, n698);
nor  g840 (n887, n762, n849, n640, n847);
nand g841 (n945, n856, n706, n862, n778);
xor  g842 (n878, n662, n430, n771, n763);
xnor g843 (n957, n753, n840, n767, n778);
nand g844 (n898, n638, n808, n757);
and  g845 (n910, n765, n762, n861, n703);
xnor g846 (n911, n633, n809, n770, n844);
nor  g847 (n867, n723, n848, n760, n851);
and  g848 (n931, n766, n656, n719, n624);
or   g849 (n950, n851, n678, n657, n727);
xnor g850 (n866, n855, n845, n758, n632);
nor  g851 (n944, n849, n748, n765, n661);
xnor g852 (n873, n760, n772, n858);
or   g853 (n881, n680, n839, n682, n725);
or   g854 (n930, n691, n772, n841, n416);
xnor g855 (n953, n643, n686, n672, n635);
or   g856 (n902, n837, n844, n847, n753);
and  g857 (n871, n759, n709, n626, n847);
xor  g858 (n872, n694, n679, n646, n757);
or   g859 (n883, n736, n738, n621, n619);
or   g860 (n924, n728, n751, n642, n809);
nor  g861 (n954, n735, n622, n777, n852);
nand g862 (n940, n775, n761, n770, n717);
xnor g863 (n896, n756, n769, n763, n740);
xnor g864 (n912, n850, n864, n849, n726);
xor  g865 (n899, n685, n776, n750, n739);
and  g866 (n958, n846, n846, n701, n714);
nand g867 (n886, n757, n855, n628, n863);
xor  g868 (n939, n705, n673, n751, n766);
xnor g869 (n891, n721, n687, n754, n434);
nand g870 (n885, n843, n425, n754, n692);
xor  g871 (n935, n857, n764, n854, n752);
nand g872 (n892, n711, n629, n771, n755);
nor  g873 (n920, n861, n649, n751, n423);
and  g874 (n869, n763, n857, n733, n848);
nor  g875 (n914, n860, n859, n732, n704);
or   g876 (n900, n737, n758, n775, n769);
or   g877 (n941, n845, n752, n769, n665);
nor  g878 (n903, n856, n734, n660, n677);
xnor g879 (n922, n693, n777, n776, n764);
nand g880 (n916, n641, n761, n684, n730);
or   g881 (n908, n855, n758, n772, n417);
nor  g882 (n895, n432, n768, n857, n696);
xnor g883 (n936, n777, n647, n750, n770);
and  g884 (n925, n759, n761, n861, n757);
or   g885 (n929, n770, n765, n846, n858);
nand g886 (n915, n768, n683, n748, n852);
and  g887 (n875, n418, n864, n855, n653);
nor  g888 (n949, n860, n856, n748, n774);
nand g889 (n877, n851, n743, n861, n722);
xor  g890 (n890, n775, n741, n854, n769);
and  g891 (n947, n809, n716, n843, n671);
nor  g892 (n894, n654, n670, n854, n777);
nor  g893 (n943, n845, n710, n772, n773);
nor  g894 (n897, n700, n754, n699, n859);
nor  g895 (n948, n659, n724, n667, n856);
xor  g896 (n893, n763, n766, n863, n697);
or   g897 (n951, n774, n774, n745, n854);
nand g898 (n932, n753, n676, n848, n634);
or   g899 (n955, n429, n755, n845, n858);
xnor g900 (n905, n674, n636, n752, n755);
nor  g901 (n913, n760, n753, n853, n729);
nor  g902 (n937, n862, n707, n666, n744);
xnor g903 (n879, n695, n768, n850, n746);
or   g904 (n868, n860, n435, n863, n433);
or   g905 (n942, n859, n760, n644, n648);
and  g906 (n901, n842, n689, n690, n852);
xor  g907 (n946, n431, n759, n771, n419);
nor  g908 (n907, n421, n766, n853, n843);
nor  g909 (n917, n863, n850, n761, n715);
xor  g910 (n876, n620, n625, n860, n655);
xor  g911 (n906, n756, n756, n750, n762);
nor  g912 (n952, n742, n639, n749, n775);
nand g913 (n933, n731, n747, n658, n764);
nor  g914 (n880, n756, n759, n651, n708);
xnor g915 (n882, n749, n754, n645, n426);
nand g916 (n865, n853, n857, n755, n422);
nand g917 (n884, n774, n838, n424, n851);
and  g918 (n934, n848, n853, n767, n864);
nand g919 (n926, n767, n773, n752, n844);
nor  g920 (n921, n749, n712, n751, n669);
xnor g921 (n904, n664, n627, n843, n773);
xor  g922 (n927, n778, n859, n765, n713);
xnor g923 (n870, n702, n428, n776, n764);
nand g924 (n938, n758, n776, n675, n809);
xnor g925 (n889, n846, n650, n862, n850);
xnor g926 (n962, n888, n823, n779, n819);
and  g927 (n971, n886, n865, n873, n827);
and  g928 (n985, n781, n820, n889, n875);
xor  g929 (n981, n828, n785, n781, n823);
xor  g930 (n966, n867, n871, n877, n827);
xor  g931 (n976, n821, n779, n892, n818);
and  g932 (n961, n783, n820, n822, n829);
or   g933 (n984, n782, n780, n826, n883);
nand g934 (n970, n825, n822, n878, n828);
and  g935 (n964, n780, n782, n868, n872);
xor  g936 (n975, n782, n784, n780);
xnor g937 (n982, n881, n825, n887, n828);
xor  g938 (n973, n826, n869, n866, n885);
and  g939 (n963, n825, n829, n779, n824);
xor  g940 (n974, n819, n820, n825, n778);
and  g941 (n972, n821, n827, n786, n785);
xor  g942 (n980, n876, n819, n781, n829);
or   g943 (n978, n826, n824, n870, n786);
or   g944 (n965, n817, n822, n820, n874);
xnor g945 (n960, n882, n824, n784, n786);
or   g946 (n959, n824, n879, n819, n785);
or   g947 (n983, n782, n783, n880, n784);
nor  g948 (n967, n821, n884, n829, n828);
xor  g949 (n969, n780, n783, n821, n890);
nor  g950 (n977, n827, n779, n823, n781);
or   g951 (n979, n826, n785, n891, n818);
xnor g952 (n968, n783, n823, n817, n822);
nor  g953 (n991, n983, n789, n790, n791);
and  g954 (n988, n790, n979, n787, n786);
nand g955 (n989, n985, n984, n788, n787);
and  g956 (n990, n790, n789, n788);
xnor g957 (n992, n787, n982, n790, n789);
nor  g958 (n986, n787, n791, n981);
or   g959 (n987, n789, n980, n791, n788);
nor  g960 (n1010, n934, n473, n443, n988);
and  g961 (n1001, n918, n902, n932, n990);
xor  g962 (n1016, n469, n906, n927, n466);
xnor g963 (n1019, n447, n921, n450, n436);
xnor g964 (n1020, n438, n897, n986, n903);
xor  g965 (n998, n938, n445, n454, n456);
nand g966 (n1008, n444, n989, n933, n987);
or   g967 (n1014, n931, n986, n928, n452);
or   g968 (n1013, n458, n987, n909, n913);
xor  g969 (n999, n992, n929, n900, n989);
xor  g970 (n996, n992, n907, n926, n914);
or   g971 (n1004, n895, n908, n453, n990);
xnor g972 (n1012, n986, n460, n440, n449);
xor  g973 (n1009, n471, n991, n463, n457);
or   g974 (n1000, n904, n922, n461, n992);
nand g975 (n994, n924, n989, n893, n990);
nand g976 (n1006, n991, n935, n451, n894);
and  g977 (n1005, n986, n910, n465, n464);
or   g978 (n997, n448, n916, n988, n919);
xor  g979 (n995, n930, n467, n472, n988);
nor  g980 (n1015, n987, n920, n437, n901);
nand g981 (n1007, n991, n468, n992, n459);
nor  g982 (n1002, n989, n462, n470, n899);
or   g983 (n1011, n915, n898, n991, n987);
nor  g984 (n1003, n911, n442, n936, n990);
xor  g985 (n1018, n912, n937, n439, n455);
xor  g986 (n1017, n441, n925, n988, n446);
nor  g987 (n993, n923, n917, n896, n905);
xor  g988 (n1022, n1002, n1012, n939, n949);
or   g989 (n1023, n1020, n999, n1015, n1009);
xor  g990 (n1024, n1018, n1011, n997, n947);
nand g991 (n1026, n993, n995, n943, n1019);
nand g992 (n1029, n953, n1014, n1004, n955);
and  g993 (n1028, n1003, n1007, n944, n956);
xnor g994 (n1030, n1010, n940, n946, n941);
xor  g995 (n1025, n996, n1006, n1008, n950);
xnor g996 (n1031, n1001, n945, n958, n948);
xor  g997 (n1021, n998, n954, n994, n1017);
nand g998 (n1027, n1013, n1005, n1016, n951);
nand g999 (n1032, n1000, n957, n952, n942);
endmodule