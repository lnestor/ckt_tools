

module Stat_255_53
(
  n1,
  n2,
  n3,
  n4,
  n5,
  n6,
  n7,
  n8,
  n9,
  n10,
  n11,
  n12,
  n13,
  n14,
  n15,
  n16,
  n17,
  n18,
  n19,
  n20,
  n21,
  n22,
  n23,
  n24,
  n25,
  n26,
  n27,
  n28,
  n278,
  n282,
  n273,
  n275,
  n281,
  n274,
  n271,
  n270,
  n283,
  n267,
  n280,
  n276,
  n272,
  n277,
  n279,
  n269,
  n268,
  keyIn_0_0,
  keyIn_0_1,
  keyIn_0_2,
  keyIn_0_3,
  keyIn_0_4,
  keyIn_0_5,
  keyIn_0_6,
  keyIn_0_7,
  keyIn_0_8,
  keyIn_0_9,
  keyIn_0_10,
  keyIn_0_11,
  keyIn_0_12,
  keyIn_0_13,
  keyIn_0_14,
  keyIn_0_15,
  keyIn_0_16,
  keyIn_0_17,
  keyIn_0_18,
  keyIn_0_19,
  keyIn_0_20,
  keyIn_0_21,
  keyIn_0_22,
  keyIn_0_23,
  keyIn_0_24,
  keyIn_0_25,
  keyIn_0_26,
  keyIn_0_27,
  keyIn_0_28,
  keyIn_0_29,
  keyIn_0_30,
  keyIn_0_31,
  keyIn_0_32,
  keyIn_0_33,
  keyIn_0_34,
  keyIn_0_35,
  keyIn_0_36,
  keyIn_0_37,
  keyIn_0_38,
  keyIn_0_39,
  keyIn_0_40,
  keyIn_0_41,
  keyIn_0_42,
  keyIn_0_43,
  keyIn_0_44,
  keyIn_0_45,
  keyIn_0_46,
  keyIn_0_47,
  keyIn_0_48,
  keyIn_0_49,
  keyIn_0_50,
  keyIn_0_51,
  keyIn_0_52,
  keyIn_0_53,
  keyIn_0_54,
  keyIn_0_55
);

  input n1;input n2;input n3;input n4;input n5;input n6;input n7;input n8;input n9;input n10;input n11;input n12;input n13;input n14;input n15;input n16;input n17;input n18;input n19;input n20;input n21;input n22;input n23;input n24;input n25;input n26;input n27;input n28;input keyIn_0_0;input keyIn_0_1;input keyIn_0_2;input keyIn_0_3;input keyIn_0_4;input keyIn_0_5;input keyIn_0_6;input keyIn_0_7;input keyIn_0_8;input keyIn_0_9;input keyIn_0_10;input keyIn_0_11;input keyIn_0_12;input keyIn_0_13;input keyIn_0_14;input keyIn_0_15;input keyIn_0_16;input keyIn_0_17;input keyIn_0_18;input keyIn_0_19;input keyIn_0_20;input keyIn_0_21;input keyIn_0_22;input keyIn_0_23;input keyIn_0_24;input keyIn_0_25;input keyIn_0_26;input keyIn_0_27;input keyIn_0_28;input keyIn_0_29;input keyIn_0_30;input keyIn_0_31;input keyIn_0_32;input keyIn_0_33;input keyIn_0_34;input keyIn_0_35;input keyIn_0_36;input keyIn_0_37;input keyIn_0_38;input keyIn_0_39;input keyIn_0_40;input keyIn_0_41;input keyIn_0_42;input keyIn_0_43;input keyIn_0_44;input keyIn_0_45;input keyIn_0_46;input keyIn_0_47;input keyIn_0_48;input keyIn_0_49;input keyIn_0_50;input keyIn_0_51;input keyIn_0_52;input keyIn_0_53;input keyIn_0_54;input keyIn_0_55;
  output n278;output n282;output n273;output n275;output n281;output n274;output n271;output n270;output n283;output n267;output n280;output n276;output n272;output n277;output n279;output n269;output n268;
  wire n29;wire n30;wire n31;wire n32;wire n33;wire n34;wire n35;wire n36;wire n37;wire n38;wire n39;wire n40;wire n41;wire n42;wire n43;wire n44;wire n45;wire n46;wire n47;wire n48;wire n49;wire n50;wire n51;wire n52;wire n53;wire n54;wire n55;wire n56;wire n57;wire n58;wire n59;wire n60;wire n61;wire n62;wire n63;wire n64;wire n65;wire n66;wire n67;wire n68;wire n69;wire n70;wire n71;wire n72;wire n73;wire n74;wire n75;wire n76;wire n77;wire n78;wire n79;wire n80;wire n81;wire n82;wire n83;wire n84;wire n85;wire n86;wire n87;wire n88;wire n89;wire n90;wire n91;wire n92;wire n93;wire n94;wire n95;wire n96;wire n97;wire n98;wire n99;wire n100;wire n101;wire n102;wire n103;wire n104;wire n105;wire n106;wire n107;wire n108;wire n109;wire n110;wire n111;wire n112;wire n113;wire n114;wire n115;wire n116;wire n117;wire n118;wire n119;wire n120;wire n121;wire n122;wire n123;wire n124;wire n125;wire n126;wire n127;wire n128;wire n129;wire n130;wire n131;wire n132;wire n133;wire n134;wire n135;wire n136;wire n137;wire n138;wire n139;wire n140;wire n141;wire n142;wire n143;wire n144;wire n145;wire n146;wire n147;wire n148;wire n149;wire n150;wire n151;wire n152;wire n153;wire n154;wire n155;wire n156;wire n157;wire n158;wire n159;wire n160;wire n161;wire n162;wire n163;wire n164;wire n165;wire n166;wire n167;wire n168;wire n169;wire n170;wire n171;wire n172;wire n173;wire n174;wire n175;wire n176;wire n177;wire n178;wire n179;wire n180;wire n181;wire n182;wire n183;wire n184;wire n185;wire n186;wire n187;wire n188;wire n189;wire n190;wire n191;wire n192;wire n193;wire n194;wire n195;wire n196;wire n197;wire n198;wire n199;wire n200;wire n201;wire n202;wire n203;wire n204;wire n205;wire n206;wire n207;wire n208;wire n209;wire n210;wire n211;wire n212;wire n213;wire n214;wire n215;wire n216;wire n217;wire n218;wire n219;wire n220;wire n221;wire n222;wire n223;wire n224;wire n225;wire n226;wire n227;wire n228;wire n229;wire n230;wire n231;wire n232;wire n233;wire n234;wire n235;wire n236;wire n237;wire n238;wire n239;wire n240;wire n241;wire n242;wire n243;wire n244;wire n245;wire n246;wire n247;wire n248;wire n249;wire n250;wire n251;wire n252;wire n253;wire n254;wire n255;wire n256;wire n257;wire n258;wire n259;wire n260;wire n261;wire n262;wire n263;wire n264;wire n265;wire n266;wire g_input_0_0;wire gbar_input_0_0;wire g_input_0_1;wire gbar_input_0_1;wire g_input_0_2;wire gbar_input_0_2;wire g_input_0_3;wire gbar_input_0_3;wire g_input_0_4;wire gbar_input_0_4;wire g_input_0_5;wire gbar_input_0_5;wire g_input_0_6;wire gbar_input_0_6;wire g_input_0_7;wire gbar_input_0_7;wire g_input_0_8;wire gbar_input_0_8;wire g_input_0_9;wire gbar_input_0_9;wire g_input_0_10;wire gbar_input_0_10;wire g_input_0_11;wire gbar_input_0_11;wire g_input_0_12;wire gbar_input_0_12;wire g_input_0_13;wire gbar_input_0_13;wire g_input_0_14;wire gbar_input_0_14;wire g_input_0_15;wire gbar_input_0_15;wire g_input_0_16;wire gbar_input_0_16;wire g_input_0_17;wire gbar_input_0_17;wire g_input_0_18;wire gbar_input_0_18;wire g_input_0_19;wire gbar_input_0_19;wire g_input_0_20;wire gbar_input_0_20;wire g_input_0_21;wire gbar_input_0_21;wire g_input_0_22;wire gbar_input_0_22;wire g_input_0_23;wire gbar_input_0_23;wire g_input_0_24;wire gbar_input_0_24;wire g_input_0_25;wire gbar_input_0_25;wire g_input_0_26;wire gbar_input_0_26;wire g_input_0_27;wire gbar_input_0_27;wire f_g_wire;wire f_gbar_wire;wire AntiSAT_output;

  buf
  g0
  (
    n97,
    n16
  );


  not
  g1
  (
    n56,
    n4
  );


  buf
  g2
  (
    n71,
    n24
  );


  not
  g3
  (
    n108,
    n11
  );


  not
  g4
  (
    n95,
    n11
  );


  not
  g5
  (
    n109,
    n1
  );


  not
  g6
  (
    n39,
    n6
  );


  buf
  g7
  (
    n76,
    n11
  );


  buf
  g8
  (
    n82,
    n14
  );


  not
  g9
  (
    n52,
    n7
  );


  not
  g10
  (
    n69,
    n2
  );


  buf
  g11
  (
    n54,
    n17
  );


  not
  g12
  (
    n38,
    n18
  );


  buf
  g13
  (
    n101,
    n16
  );


  buf
  g14
  (
    n84,
    n19
  );


  not
  g15
  (
    n66,
    n21
  );


  not
  g16
  (
    n88,
    n12
  );


  buf
  g17
  (
    n29,
    n19
  );


  not
  g18
  (
    n55,
    n15
  );


  buf
  g19
  (
    n100,
    n20
  );


  buf
  g20
  (
    n121,
    n21
  );


  not
  g21
  (
    n34,
    n4
  );


  not
  g22
  (
    n94,
    n2
  );


  buf
  g23
  (
    n91,
    n13
  );


  buf
  g24
  (
    n92,
    n10
  );


  not
  g25
  (
    n87,
    n8
  );


  not
  g26
  (
    n120,
    n7
  );


  not
  g27
  (
    n111,
    n23
  );


  not
  g28
  (
    n107,
    n16
  );


  buf
  g29
  (
    n67,
    n22
  );


  buf
  g30
  (
    n90,
    n11
  );


  buf
  g31
  (
    n46,
    n10
  );


  buf
  g32
  (
    n78,
    n5
  );


  buf
  g33
  (
    n114,
    n3
  );


  buf
  g34
  (
    n93,
    n20
  );


  buf
  g35
  (
    n89,
    n9
  );


  not
  g36
  (
    n74,
    n23
  );


  buf
  g37
  (
    n53,
    n13
  );


  buf
  g38
  (
    n102,
    n10
  );


  not
  g39
  (
    n86,
    n15
  );


  buf
  g40
  (
    n48,
    n8
  );


  buf
  g41
  (
    n116,
    n24
  );


  not
  g42
  (
    n105,
    n9
  );


  not
  g43
  (
    n117,
    n3
  );


  buf
  g44
  (
    n79,
    n14
  );


  buf
  g45
  (
    n42,
    n5
  );


  not
  g46
  (
    n99,
    n15
  );


  not
  g47
  (
    n85,
    n6
  );


  buf
  g48
  (
    n70,
    n9
  );


  not
  g49
  (
    n104,
    n21
  );


  buf
  g50
  (
    n49,
    n23
  );


  buf
  g51
  (
    n73,
    n2
  );


  buf
  g52
  (
    n112,
    n13
  );


  buf
  g53
  (
    n35,
    n16
  );


  not
  g54
  (
    n44,
    n22
  );


  buf
  g55
  (
    n63,
    n2
  );


  buf
  g56
  (
    n59,
    n7
  );


  buf
  g57
  (
    n68,
    n3
  );


  buf
  g58
  (
    n119,
    n1
  );


  not
  g59
  (
    n72,
    n4
  );


  buf
  g60
  (
    n98,
    n20
  );


  not
  g61
  (
    n106,
    n8
  );


  buf
  g62
  (
    n58,
    n22
  );


  not
  g63
  (
    n61,
    n12
  );


  buf
  g64
  (
    n30,
    n21
  );


  not
  g65
  (
    n40,
    n24
  );


  not
  g66
  (
    n57,
    n18
  );


  not
  g67
  (
    n43,
    n1
  );


  not
  g68
  (
    n77,
    n13
  );


  not
  g69
  (
    n33,
    n6
  );


  buf
  g70
  (
    n60,
    n14
  );


  buf
  g71
  (
    n45,
    n3
  );


  buf
  g72
  (
    n75,
    n8
  );


  not
  g73
  (
    n51,
    n23
  );


  buf
  g74
  (
    n62,
    n5
  );


  buf
  g75
  (
    n47,
    n1
  );


  not
  g76
  (
    n32,
    n6
  );


  not
  g77
  (
    n80,
    n12
  );


  buf
  g78
  (
    n36,
    n14
  );


  not
  g79
  (
    n118,
    n18
  );


  buf
  g80
  (
    n65,
    n9
  );


  buf
  g81
  (
    n123,
    n17
  );


  not
  g82
  (
    n37,
    n20
  );


  buf
  g83
  (
    n64,
    n17
  );


  buf
  g84
  (
    n113,
    n17
  );


  not
  g85
  (
    n96,
    n5
  );


  buf
  g86
  (
    n50,
    n4
  );


  not
  g87
  (
    n103,
    n15
  );


  buf
  g88
  (
    n31,
    n7
  );


  buf
  g89
  (
    n115,
    n18
  );


  not
  g90
  (
    n81,
    n12
  );


  not
  g91
  (
    n41,
    n19
  );


  not
  g92
  (
    n110,
    n22
  );


  buf
  g93
  (
    n122,
    n19
  );


  buf
  g94
  (
    n83,
    n10
  );


  buf
  g95
  (
    n127,
    n28
  );


  buf
  g96
  (
    n142,
    n25
  );


  not
  g97
  (
    n130,
    n27
  );


  buf
  g98
  (
    n139,
    n28
  );


  buf
  g99
  (
    n129,
    n36
  );


  buf
  g100
  (
    n147,
    n30
  );


  buf
  g101
  (
    n143,
    n36
  );


  buf
  g102
  (
    n131,
    n37
  );


  nor
  g103
  (
    n137,
    n32,
    n25,
    n26
  );


  nand
  g104
  (
    n146,
    n43,
    n30,
    n36,
    n39
  );


  nor
  g105
  (
    n133,
    n34,
    n33,
    n28,
    n40
  );


  nor
  g106
  (
    n126,
    n43,
    n42,
    n38,
    n32
  );


  nand
  g107
  (
    n141,
    n27,
    n36,
    n39,
    n33
  );


  nor
  g108
  (
    n148,
    n41,
    n25,
    n29,
    n40
  );


  xnor
  g109
  (
    n124,
    n35,
    n38,
    n31,
    n25
  );


  xor
  g110
  (
    n136,
    n26,
    n27,
    n42,
    n40
  );


  and
  g111
  (
    n135,
    n31,
    n33,
    n35,
    n42
  );


  xor
  g112
  (
    n134,
    n35,
    n33,
    n41,
    n37
  );


  and
  g113
  (
    n125,
    n30,
    n27,
    n31,
    n28
  );


  xor
  g114
  (
    n132,
    n26,
    n42,
    n34
  );


  nor
  g115
  (
    n138,
    n26,
    n29,
    n37,
    n40
  );


  xnor
  g116
  (
    n140,
    n41,
    n29,
    n35,
    n32
  );


  or
  g117
  (
    n144,
    n34,
    n39,
    n41
  );


  or
  g118
  (
    n128,
    n37,
    n31,
    n32,
    n38
  );


  or
  g119
  (
    n145,
    n24,
    n38,
    n30,
    n29
  );


  or
  g120
  (
    n210,
    n99,
    n103,
    n139,
    n110
  );


  xnor
  g121
  (
    n185,
    n130,
    n72,
    n90,
    n65
  );


  or
  g122
  (
    n163,
    n100,
    n89,
    n73
  );


  xor
  g123
  (
    n230,
    n55,
    n64,
    n62,
    n110
  );


  xor
  g124
  (
    n214,
    n96,
    n84,
    n54,
    n102
  );


  xor
  g125
  (
    n176,
    n56,
    n145,
    n96,
    n132
  );


  and
  g126
  (
    n245,
    n44,
    n74,
    n76,
    n97
  );


  xnor
  g127
  (
    n172,
    n51,
    n60,
    n113,
    n99
  );


  or
  g128
  (
    n174,
    n140,
    n108,
    n58,
    n135
  );


  xor
  g129
  (
    n239,
    n92,
    n49,
    n136,
    n73
  );


  nand
  g130
  (
    n223,
    n134,
    n81,
    n141,
    n147
  );


  xor
  g131
  (
    n173,
    n80,
    n107,
    n126,
    n73
  );


  xnor
  g132
  (
    n234,
    n84,
    n61,
    n49,
    n75
  );


  and
  g133
  (
    n192,
    n52,
    n138,
    n148,
    n77
  );


  or
  g134
  (
    n206,
    n50,
    n55,
    n54,
    n131
  );


  nand
  g135
  (
    n161,
    n85,
    n57,
    n135,
    n77
  );


  or
  g136
  (
    n227,
    n93,
    n107,
    n71,
    n85
  );


  and
  g137
  (
    n217,
    n106,
    n75,
    n99,
    n83
  );


  nor
  g138
  (
    n184,
    n81,
    n147,
    n105,
    n87
  );


  xnor
  g139
  (
    n237,
    n46,
    n64,
    n133,
    n68
  );


  and
  g140
  (
    n205,
    n146,
    n93,
    n103,
    n77
  );


  xor
  g141
  (
    n158,
    n43,
    n94,
    n148,
    n126
  );


  or
  g142
  (
    n215,
    n58,
    n127,
    n131,
    n124
  );


  xor
  g143
  (
    n156,
    n107,
    n61,
    n138,
    n76
  );


  xnor
  g144
  (
    n195,
    n143,
    n107,
    n88,
    n128
  );


  xnor
  g145
  (
    n167,
    n111,
    n91,
    n59,
    n70
  );


  and
  g146
  (
    n218,
    n91,
    n101,
    n44,
    n85
  );


  xnor
  g147
  (
    n159,
    n105,
    n62,
    n118,
    n51
  );


  nand
  g148
  (
    n191,
    n68,
    n49,
    n73,
    n77
  );


  and
  g149
  (
    n248,
    n134,
    n144,
    n63,
    n146
  );


  xor
  g150
  (
    n232,
    n54,
    n95,
    n104,
    n91
  );


  or
  g151
  (
    n168,
    n69,
    n82,
    n98,
    n115
  );


  xor
  g152
  (
    n229,
    n112,
    n143,
    n89,
    n116
  );


  nor
  g153
  (
    n196,
    n137,
    n67,
    n45,
    n47
  );


  nand
  g154
  (
    n231,
    n46,
    n106,
    n144,
    n48
  );


  and
  g155
  (
    n243,
    n93,
    n109,
    n141,
    n81
  );


  nor
  g156
  (
    n166,
    n114,
    n105,
    n93,
    n71
  );


  xnor
  g157
  (
    n233,
    n86,
    n86,
    n131,
    n84
  );


  and
  g158
  (
    n194,
    n82,
    n56,
    n44
  );


  xor
  g159
  (
    n154,
    n141,
    n55,
    n110,
    n135
  );


  or
  g160
  (
    n212,
    n138,
    n60,
    n86,
    n134
  );


  or
  g161
  (
    n189,
    n127,
    n53,
    n143,
    n141
  );


  nand
  g162
  (
    n221,
    n88,
    n48,
    n82,
    n142
  );


  xnor
  g163
  (
    n247,
    n79,
    n104,
    n66,
    n100
  );


  xnor
  g164
  (
    n193,
    n136,
    n124,
    n129,
    n70
  );


  nor
  g165
  (
    n181,
    n102,
    n94,
    n126,
    n136
  );


  xnor
  g166
  (
    n164,
    n66,
    n125,
    n64,
    n144
  );


  nor
  g167
  (
    n197,
    n86,
    n72,
    n88,
    n51
  );


  nand
  g168
  (
    n149,
    n74,
    n127,
    n52,
    n69
  );


  xor
  g169
  (
    n236,
    n143,
    n78,
    n64,
    n115
  );


  or
  g170
  (
    n208,
    n76,
    n59,
    n63,
    n67
  );


  xnor
  g171
  (
    n187,
    n65,
    n92,
    n117
  );


  xnor
  g172
  (
    n244,
    n106,
    n59,
    n111,
    n140
  );


  xor
  g173
  (
    n207,
    n98,
    n81,
    n84,
    n75
  );


  nand
  g174
  (
    n213,
    n118,
    n87,
    n114,
    n103
  );


  or
  g175
  (
    n235,
    n66,
    n43,
    n113,
    n108
  );


  nor
  g176
  (
    n216,
    n139,
    n78,
    n72,
    n88
  );


  or
  g177
  (
    n152,
    n116,
    n83,
    n58,
    n142
  );


  xnor
  g178
  (
    n182,
    n112,
    n60,
    n144,
    n50
  );


  and
  g179
  (
    n201,
    n148,
    n114,
    n137,
    n145
  );


  and
  g180
  (
    n175,
    n71,
    n58,
    n130,
    n101
  );


  or
  g181
  (
    n183,
    n60,
    n55,
    n78,
    n98
  );


  xor
  g182
  (
    n171,
    n50,
    n101,
    n96,
    n100
  );


  xor
  g183
  (
    n186,
    n110,
    n130,
    n146,
    n95
  );


  and
  g184
  (
    n169,
    n80,
    n138,
    n90,
    n116
  );


  or
  g185
  (
    n170,
    n132,
    n148,
    n139,
    n67
  );


  and
  g186
  (
    n180,
    n95,
    n63,
    n115,
    n65
  );


  and
  g187
  (
    n240,
    n124,
    n46,
    n105,
    n133
  );


  xor
  g188
  (
    n225,
    n100,
    n89,
    n83,
    n52
  );


  xnor
  g189
  (
    n203,
    n48,
    n132,
    n68,
    n79
  );


  nand
  g190
  (
    n199,
    n109,
    n114,
    n108,
    n146
  );


  or
  g191
  (
    n211,
    n147,
    n62,
    n128,
    n54
  );


  nand
  g192
  (
    n228,
    n128,
    n112,
    n102,
    n56
  );


  xor
  g193
  (
    n162,
    n59,
    n53,
    n101,
    n57
  );


  nor
  g194
  (
    n160,
    n125,
    n70,
    n111,
    n131
  );


  nor
  g195
  (
    n204,
    n117,
    n97,
    n52,
    n124
  );


  or
  g196
  (
    n157,
    n98,
    n111,
    n104,
    n69
  );


  xor
  g197
  (
    n224,
    n125,
    n91,
    n139,
    n102
  );


  nand
  g198
  (
    n202,
    n63,
    n94,
    n129,
    n45
  );


  nor
  g199
  (
    n150,
    n126,
    n61,
    n116,
    n136
  );


  and
  g200
  (
    n151,
    n99,
    n92,
    n133,
    n83
  );


  nor
  g201
  (
    n209,
    n115,
    n95,
    n117
  );


  xnor
  g202
  (
    n246,
    n130,
    n128,
    n127,
    n67
  );


  xor
  g203
  (
    n220,
    n108,
    n50,
    n90,
    n87
  );


  xor
  g204
  (
    n155,
    n96,
    n145,
    n80,
    n113
  );


  or
  g205
  (
    n177,
    n70,
    n97,
    n62,
    n104
  );


  nor
  g206
  (
    n153,
    n90,
    n97,
    n133,
    n45
  );


  nor
  g207
  (
    n179,
    n78,
    n140,
    n47,
    n75
  );


  nand
  g208
  (
    n200,
    n72,
    n142,
    n112,
    n45
  );


  and
  g209
  (
    n219,
    n142,
    n71,
    n66,
    n82
  );


  xnor
  g210
  (
    n165,
    n132,
    n76,
    n51,
    n57
  );


  nor
  g211
  (
    n222,
    n69,
    n44,
    n53,
    n61
  );


  nor
  g212
  (
    n190,
    n79,
    n137,
    n145
  );


  xor
  g213
  (
    n242,
    n47,
    n49,
    n103,
    n113
  );


  xor
  g214
  (
    n241,
    n135,
    n65,
    n129,
    n87
  );


  nor
  g215
  (
    n226,
    n47,
    n80,
    n106,
    n46
  );


  or
  g216
  (
    n188,
    n48,
    n109,
    n85,
    n74
  );


  xor
  g217
  (
    n238,
    n129,
    n147,
    n79,
    n57
  );


  or
  g218
  (
    n198,
    n134,
    n140,
    n74,
    n94
  );


  and
  g219
  (
    n178,
    n53,
    n125,
    n109,
    n68
  );


  nor
  g220
  (
    n255,
    n204,
    n199,
    n171,
    n166
  );


  xor
  g221
  (
    n250,
    n185,
    n120,
    n187,
    n167
  );


  xor
  g222
  (
    n257,
    n183,
    n121,
    n150,
    n180
  );


  nand
  g223
  (
    n260,
    n121,
    n160,
    n118,
    n120
  );


  or
  g224
  (
    n264,
    n168,
    n173,
    n205,
    n120
  );


  nor
  g225
  (
    n251,
    n149,
    n184,
    n179,
    n174
  );


  nand
  g226
  (
    n266,
    n159,
    n152,
    n119,
    n155
  );


  nor
  g227
  (
    n253,
    n172,
    n182,
    n203,
    n151
  );


  nand
  g228
  (
    n265,
    n177,
    n198,
    n197,
    n200
  );


  nor
  g229
  (
    n259,
    n190,
    n119,
    n162,
    n206
  );


  or
  g230
  (
    n263,
    n201,
    n119,
    n118,
    n164
  );


  xor
  g231
  (
    n256,
    n161,
    n207,
    n153,
    n121
  );


  nor
  g232
  (
    n254,
    n196,
    n194,
    n175,
    n202
  );


  nor
  g233
  (
    n249,
    n163,
    n154,
    n188,
    n191
  );


  xnor
  g234
  (
    n262,
    n193,
    n119,
    n157,
    n158
  );


  and
  g235
  (
    n261,
    n156,
    n165,
    n170,
    n120
  );


  xnor
  g236
  (
    n258,
    n192,
    n169,
    n178,
    n181
  );


  nand
  g237
  (
    n252,
    n189,
    n176,
    n186,
    n195
  );


  nor
  g238
  (
    n276,
    n239,
    n211,
    n233,
    n250
  );


  xor
  g239
  (
    n280,
    n231,
    n258,
    n236,
    n123
  );


  nor
  g240
  (
    n281,
    n209,
    n253,
    n224,
    n234
  );


  nand
  g241
  (
    n282,
    n242,
    n266,
    n122
  );


  nor
  g242
  (
    n277,
    n216,
    n251,
    n249,
    n208
  );


  and
  g243
  (
    n269,
    n210,
    n227,
    n263,
    n246
  );


  xnor
  g244
  (
    n272,
    n232,
    n121,
    n123
  );


  nor
  g245
  (
    AntiSAT_key_wire,
    n237,
    n240,
    n256,
    n247
  );


  and
  g246
  (
    n270,
    n254,
    n122,
    n264,
    n217
  );


  nand
  g247
  (
    n273,
    n228,
    n257,
    n212,
    n226
  );


  and
  g248
  (
    n283,
    n265,
    n260,
    n219,
    n243
  );


  nand
  g249
  (
    n279,
    n241,
    n238,
    n220,
    n235
  );


  xor
  g250
  (
    n274,
    n215,
    n259,
    n261,
    n218
  );


  nor
  g251
  (
    n271,
    n222,
    n214,
    n122,
    n262
  );


  xnor
  g252
  (
    n278,
    n223,
    n255,
    n252,
    n230
  );


  nand
  g253
  (
    n267,
    n123,
    n225,
    n229,
    n221
  );


  or
  g254
  (
    n275,
    n248,
    n213,
    n245,
    n244
  );


  xor
  KeyPIGate_0_0
  (
    g_input_0_0,
    keyIn_0_0,
    n1
  );


  xor
  KeyPIGate_0_28
  (
    gbar_input_0_0,
    keyIn_0_28,
    n1
  );


  xor
  KeyPIGate_0_1
  (
    g_input_0_1,
    keyIn_0_1,
    n2
  );


  xor
  KeyPIGate_0_29
  (
    gbar_input_0_1,
    keyIn_0_29,
    n2
  );


  xor
  KeyPIGate_0_2
  (
    g_input_0_2,
    keyIn_0_2,
    n3
  );


  xor
  KeyPIGate_0_30
  (
    gbar_input_0_2,
    keyIn_0_30,
    n3
  );


  xor
  KeyPIGate_0_3
  (
    g_input_0_3,
    keyIn_0_3,
    n4
  );


  xor
  KeyPIGate_0_31
  (
    gbar_input_0_3,
    keyIn_0_31,
    n4
  );


  xor
  KeyPIGate_0_4
  (
    g_input_0_4,
    keyIn_0_4,
    n5
  );


  xor
  KeyPIGate_0_32
  (
    gbar_input_0_4,
    keyIn_0_32,
    n5
  );


  xor
  KeyPIGate_0_5
  (
    g_input_0_5,
    keyIn_0_5,
    n6
  );


  xor
  KeyPIGate_0_33
  (
    gbar_input_0_5,
    keyIn_0_33,
    n6
  );


  xor
  KeyPIGate_0_6
  (
    g_input_0_6,
    keyIn_0_6,
    n7
  );


  xor
  KeyPIGate_0_34
  (
    gbar_input_0_6,
    keyIn_0_34,
    n7
  );


  xor
  KeyPIGate_0_7
  (
    g_input_0_7,
    keyIn_0_7,
    n8
  );


  xor
  KeyPIGate_0_35
  (
    gbar_input_0_7,
    keyIn_0_35,
    n8
  );


  xor
  KeyPIGate_0_8
  (
    g_input_0_8,
    keyIn_0_8,
    n9
  );


  xor
  KeyPIGate_0_36
  (
    gbar_input_0_8,
    keyIn_0_36,
    n9
  );


  xor
  KeyPIGate_0_9
  (
    g_input_0_9,
    keyIn_0_9,
    n10
  );


  xor
  KeyPIGate_0_37
  (
    gbar_input_0_9,
    keyIn_0_37,
    n10
  );


  xor
  KeyPIGate_0_10
  (
    g_input_0_10,
    keyIn_0_10,
    n11
  );


  xor
  KeyPIGate_0_38
  (
    gbar_input_0_10,
    keyIn_0_38,
    n11
  );


  xor
  KeyPIGate_0_11
  (
    g_input_0_11,
    keyIn_0_11,
    n12
  );


  xor
  KeyPIGate_0_39
  (
    gbar_input_0_11,
    keyIn_0_39,
    n12
  );


  xor
  KeyPIGate_0_12
  (
    g_input_0_12,
    keyIn_0_12,
    n13
  );


  xor
  KeyPIGate_0_40
  (
    gbar_input_0_12,
    keyIn_0_40,
    n13
  );


  xor
  KeyPIGate_0_13
  (
    g_input_0_13,
    keyIn_0_13,
    n14
  );


  xor
  KeyPIGate_0_41
  (
    gbar_input_0_13,
    keyIn_0_41,
    n14
  );


  xor
  KeyPIGate_0_14
  (
    g_input_0_14,
    keyIn_0_14,
    n15
  );


  xor
  KeyPIGate_0_42
  (
    gbar_input_0_14,
    keyIn_0_42,
    n15
  );


  xor
  KeyPIGate_0_15
  (
    g_input_0_15,
    keyIn_0_15,
    n16
  );


  xor
  KeyPIGate_0_43
  (
    gbar_input_0_15,
    keyIn_0_43,
    n16
  );


  xor
  KeyPIGate_0_16
  (
    g_input_0_16,
    keyIn_0_16,
    n17
  );


  xor
  KeyPIGate_0_44
  (
    gbar_input_0_16,
    keyIn_0_44,
    n17
  );


  xor
  KeyPIGate_0_17
  (
    g_input_0_17,
    keyIn_0_17,
    n18
  );


  xor
  KeyPIGate_0_45
  (
    gbar_input_0_17,
    keyIn_0_45,
    n18
  );


  xor
  KeyPIGate_0_18
  (
    g_input_0_18,
    keyIn_0_18,
    n19
  );


  xor
  KeyPIGate_0_46
  (
    gbar_input_0_18,
    keyIn_0_46,
    n19
  );


  xor
  KeyPIGate_0_19
  (
    g_input_0_19,
    keyIn_0_19,
    n20
  );


  xor
  KeyPIGate_0_47
  (
    gbar_input_0_19,
    keyIn_0_47,
    n20
  );


  xor
  KeyPIGate_0_20
  (
    g_input_0_20,
    keyIn_0_20,
    n21
  );


  xor
  KeyPIGate_0_48
  (
    gbar_input_0_20,
    keyIn_0_48,
    n21
  );


  xor
  KeyPIGate_0_21
  (
    g_input_0_21,
    keyIn_0_21,
    n22
  );


  xor
  KeyPIGate_0_49
  (
    gbar_input_0_21,
    keyIn_0_49,
    n22
  );


  xor
  KeyPIGate_0_22
  (
    g_input_0_22,
    keyIn_0_22,
    n23
  );


  xor
  KeyPIGate_0_50
  (
    gbar_input_0_22,
    keyIn_0_50,
    n23
  );


  xor
  KeyPIGate_0_23
  (
    g_input_0_23,
    keyIn_0_23,
    n24
  );


  xor
  KeyPIGate_0_51
  (
    gbar_input_0_23,
    keyIn_0_51,
    n24
  );


  xor
  KeyPIGate_0_24
  (
    g_input_0_24,
    keyIn_0_24,
    n25
  );


  xor
  KeyPIGate_0_52
  (
    gbar_input_0_24,
    keyIn_0_52,
    n25
  );


  xor
  KeyPIGate_0_25
  (
    g_input_0_25,
    keyIn_0_25,
    n26
  );


  xor
  KeyPIGate_0_53
  (
    gbar_input_0_25,
    keyIn_0_53,
    n26
  );


  xor
  KeyPIGate_0_26
  (
    g_input_0_26,
    keyIn_0_26,
    n27
  );


  xor
  KeyPIGate_0_54
  (
    gbar_input_0_26,
    keyIn_0_54,
    n27
  );


  xor
  KeyPIGate_0_27
  (
    g_input_0_27,
    keyIn_0_27,
    n28
  );


  xor
  KeyPIGate_0_55
  (
    gbar_input_0_27,
    keyIn_0_55,
    n28
  );


  and
  f_g
  (
    f_g_wire,
    g_input_0_0,
    g_input_0_1,
    g_input_0_2,
    g_input_0_3,
    g_input_0_4,
    g_input_0_5,
    g_input_0_6,
    g_input_0_7,
    g_input_0_8,
    g_input_0_9,
    g_input_0_10,
    g_input_0_11,
    g_input_0_12,
    g_input_0_13,
    g_input_0_14,
    g_input_0_15,
    g_input_0_16,
    g_input_0_17,
    g_input_0_18,
    g_input_0_19,
    g_input_0_20,
    g_input_0_21,
    g_input_0_22,
    g_input_0_23,
    g_input_0_24,
    g_input_0_25,
    g_input_0_26,
    g_input_0_27
  );


  nand
  f_gbar
  (
    f_gbar_wire,
    gbar_input_0_0,
    gbar_input_0_1,
    gbar_input_0_2,
    gbar_input_0_3,
    gbar_input_0_4,
    gbar_input_0_5,
    gbar_input_0_6,
    gbar_input_0_7,
    gbar_input_0_8,
    gbar_input_0_9,
    gbar_input_0_10,
    gbar_input_0_11,
    gbar_input_0_12,
    gbar_input_0_13,
    gbar_input_0_14,
    gbar_input_0_15,
    gbar_input_0_16,
    gbar_input_0_17,
    gbar_input_0_18,
    gbar_input_0_19,
    gbar_input_0_20,
    gbar_input_0_21,
    gbar_input_0_22,
    gbar_input_0_23,
    gbar_input_0_24,
    gbar_input_0_25,
    gbar_input_0_26,
    gbar_input_0_27
  );


  and
  G
  (
    AntiSAT_output,
    f_g_wire,
    f_gbar_wire
  );


  xor
  flip_it
  (
    n268,
    AntiSAT_output,
    AntiSAT_key_wire
  );


endmodule

