

module Stat_177_411
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
  nCHANGED,
  n192,
  n187,
  n186,
  n177,
  n194,
  n189,
  n190,
  n195,
  n180,
  n184,
  n185,
  n179,
  n188,
  n178,
  n176,
  n193,
  n191,
  n181,
  n183,
  n182,
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
  keyIn_0_35
);

  input n1;input n2;input n3;input n4;input n5;input n6;input n7;input n8;input n9;input n10;input n11;input n12;input n13;input n14;input n15;input n16;input n17;input n18;input keyIn_0_0;input keyIn_0_1;input keyIn_0_2;input keyIn_0_3;input keyIn_0_4;input keyIn_0_5;input keyIn_0_6;input keyIn_0_7;input keyIn_0_8;input keyIn_0_9;input keyIn_0_10;input keyIn_0_11;input keyIn_0_12;input keyIn_0_13;input keyIn_0_14;input keyIn_0_15;input keyIn_0_16;input keyIn_0_17;input keyIn_0_18;input keyIn_0_19;input keyIn_0_20;input keyIn_0_21;input keyIn_0_22;input keyIn_0_23;input keyIn_0_24;input keyIn_0_25;input keyIn_0_26;input keyIn_0_27;input keyIn_0_28;input keyIn_0_29;input keyIn_0_30;input keyIn_0_31;input keyIn_0_32;input keyIn_0_33;input keyIn_0_34;input keyIn_0_35;
  output nCHANGED;output n192;output n187;output n186;output n177;output n194;output n189;output n190;output n195;output n180;output n184;output n185;output n179;output n188;output n178;output n176;output n193;output n191;output n181;output n183;output n182;
  wire n19;wire n20;wire n21;wire n22;wire n23;wire n24;wire n25;wire n26;wire n27;wire n28;wire n29;wire n30;wire n31;wire n32;wire n33;wire n34;wire n35;wire n36;wire n37;wire n38;wire n39;wire n40;wire n41;wire n42;wire n43;wire n44;wire n45;wire n46;wire n47;wire n48;wire n49;wire n50;wire n51;wire n52;wire n53;wire n54;wire n55;wire n56;wire n57;wire n58;wire n59;wire n60;wire n61;wire n62;wire n63;wire n64;wire n65;wire n66;wire n67;wire n68;wire n69;wire n70;wire n71;wire n72;wire n73;wire n74;wire n75;wire n76;wire n77;wire n78;wire n79;wire n80;wire n81;wire n82;wire n83;wire n84;wire n85;wire n86;wire n87;wire n88;wire n89;wire n90;wire n91;wire n92;wire n93;wire n94;wire n95;wire n96;wire n97;wire n98;wire n99;wire n100;wire n101;wire n102;wire n103;wire n104;wire n105;wire n106;wire n107;wire n108;wire n109;wire n110;wire n111;wire n112;wire n113;wire n114;wire n115;wire n116;wire n117;wire n118;wire n119;wire n120;wire n121;wire n122;wire n123;wire n124;wire n125;wire n126;wire n127;wire n128;wire n129;wire n130;wire n131;wire n132;wire n133;wire n134;wire n135;wire n136;wire n137;wire n138;wire n139;wire n140;wire n141;wire n142;wire n143;wire n144;wire n145;wire n146;wire n147;wire n148;wire n149;wire n150;wire n151;wire n152;wire n153;wire n154;wire n155;wire n156;wire n157;wire n158;wire n159;wire n160;wire n161;wire n162;wire n163;wire n164;wire n165;wire n166;wire n167;wire n168;wire n169;wire n170;wire n171;wire n172;wire n173;wire n174;wire n175;wire g_input_0_0;wire gbar_input_0_0;wire g_input_0_1;wire gbar_input_0_1;wire g_input_0_2;wire gbar_input_0_2;wire g_input_0_3;wire gbar_input_0_3;wire g_input_0_4;wire gbar_input_0_4;wire g_input_0_5;wire gbar_input_0_5;wire g_input_0_6;wire gbar_input_0_6;wire g_input_0_7;wire gbar_input_0_7;wire g_input_0_8;wire gbar_input_0_8;wire g_input_0_9;wire gbar_input_0_9;wire g_input_0_10;wire gbar_input_0_10;wire g_input_0_11;wire gbar_input_0_11;wire g_input_0_12;wire gbar_input_0_12;wire g_input_0_13;wire gbar_input_0_13;wire g_input_0_14;wire gbar_input_0_14;wire g_input_0_15;wire gbar_input_0_15;wire g_input_0_16;wire gbar_input_0_16;wire g_input_0_17;wire gbar_input_0_17;wire f_g_wire;wire f_gbar_wire;wire AntiSAT_output;

  not
  g0
  (
    n35,
    n12
  );


  buf
  g1
  (
    n29,
    n9
  );


  not
  g2
  (
    n34,
    n7
  );


  not
  g3
  (
    n25,
    n6
  );


  not
  g4
  (
    n33,
    n5
  );


  not
  g5
  (
    n27,
    n17
  );


  not
  g6
  (
    n26,
    n16
  );


  buf
  g7
  (
    n28,
    n2
  );


  buf
  g8
  (
    n30,
    n8
  );


  not
  g9
  (
    n22,
    n3
  );


  buf
  g10
  (
    n23,
    n18
  );


  buf
  g11
  (
    n19,
    n14
  );


  not
  g12
  (
    n32,
    n13
  );


  buf
  g13
  (
    n21,
    n15
  );


  buf
  g14
  (
    n31,
    n4
  );


  buf
  g15
  (
    n24,
    n10
  );


  buf
  g16
  (
    n20,
    n11
  );


  buf
  g17
  (
    n90,
    n20
  );


  buf
  g18
  (
    n96,
    n34
  );


  buf
  g19
  (
    n46,
    n25
  );


  buf
  g20
  (
    n99,
    n19
  );


  not
  g21
  (
    n77,
    n35
  );


  buf
  g22
  (
    n68,
    n27
  );


  not
  g23
  (
    n64,
    n23
  );


  not
  g24
  (
    n40,
    n31
  );


  not
  g25
  (
    n66,
    n34
  );


  buf
  g26
  (
    n70,
    n28
  );


  buf
  g27
  (
    n63,
    n26
  );


  buf
  g28
  (
    n50,
    n24
  );


  not
  g29
  (
    n81,
    n25
  );


  not
  g30
  (
    n86,
    n25
  );


  buf
  g31
  (
    n41,
    n24
  );


  not
  g32
  (
    n53,
    n32
  );


  not
  g33
  (
    n73,
    n35
  );


  not
  g34
  (
    n55,
    n19
  );


  buf
  g35
  (
    n57,
    n21
  );


  buf
  g36
  (
    n78,
    n29
  );


  buf
  g37
  (
    n79,
    n30
  );


  buf
  g38
  (
    n44,
    n33
  );


  not
  g39
  (
    n60,
    n20
  );


  buf
  g40
  (
    n59,
    n33
  );


  not
  g41
  (
    n65,
    n21
  );


  buf
  g42
  (
    n103,
    n22
  );


  not
  g43
  (
    n97,
    n26
  );


  buf
  g44
  (
    n47,
    n26
  );


  buf
  g45
  (
    n88,
    n33
  );


  not
  g46
  (
    n89,
    n25
  );


  buf
  g47
  (
    n56,
    n34
  );


  not
  g48
  (
    n51,
    n19
  );


  not
  g49
  (
    n93,
    n30
  );


  buf
  g50
  (
    n91,
    n27
  );


  not
  g51
  (
    n95,
    n24
  );


  buf
  g52
  (
    n100,
    n32
  );


  buf
  g53
  (
    n98,
    n30
  );


  buf
  g54
  (
    n58,
    n22
  );


  not
  g55
  (
    n101,
    n23
  );


  buf
  g56
  (
    n74,
    n32
  );


  buf
  g57
  (
    n80,
    n35
  );


  not
  g58
  (
    n76,
    n27
  );


  not
  g59
  (
    n83,
    n20
  );


  not
  g60
  (
    n67,
    n23
  );


  buf
  g61
  (
    n42,
    n23
  );


  buf
  g62
  (
    n36,
    n22
  );


  buf
  g63
  (
    n75,
    n29
  );


  buf
  g64
  (
    n61,
    n28
  );


  not
  g65
  (
    n54,
    n34
  );


  not
  g66
  (
    n49,
    n21
  );


  buf
  g67
  (
    n85,
    n30
  );


  buf
  g68
  (
    n84,
    n31
  );


  buf
  g69
  (
    n62,
    n31
  );


  not
  g70
  (
    n102,
    n20
  );


  buf
  g71
  (
    n43,
    n29
  );


  buf
  g72
  (
    n92,
    n35
  );


  buf
  g73
  (
    n52,
    n24
  );


  buf
  g74
  (
    n39,
    n29
  );


  not
  g75
  (
    n45,
    n28
  );


  not
  g76
  (
    n94,
    n27
  );


  buf
  g77
  (
    n69,
    n31
  );


  buf
  g78
  (
    n82,
    n28
  );


  buf
  g79
  (
    n71,
    n33
  );


  buf
  g80
  (
    n38,
    n19
  );


  buf
  g81
  (
    n48,
    n21
  );


  buf
  g82
  (
    n37,
    n26
  );


  not
  g83
  (
    n87,
    n32
  );


  not
  g84
  (
    n72,
    n22
  );


  nor
  g85
  (
    n115,
    n52,
    n102,
    n64
  );


  nand
  g86
  (
    n153,
    n94,
    n56,
    n79
  );


  xor
  g87
  (
    n116,
    n41,
    n96,
    n43
  );


  or
  g88
  (
    n112,
    n82,
    n57,
    n96
  );


  xnor
  g89
  (
    n161,
    n64,
    n82,
    n93
  );


  or
  g90
  (
    n120,
    n62,
    n94,
    n70
  );


  or
  g91
  (
    n149,
    n44,
    n38,
    n60
  );


  nor
  g92
  (
    n171,
    n58,
    n93,
    n51
  );


  nor
  g93
  (
    n129,
    n95,
    n103,
    n56
  );


  or
  g94
  (
    n165,
    n78,
    n86,
    n70
  );


  or
  g95
  (
    n108,
    n101,
    n37,
    n52
  );


  and
  g96
  (
    n172,
    n91,
    n92,
    n67
  );


  xnor
  g97
  (
    n169,
    n100,
    n45,
    n59
  );


  nand
  g98
  (
    n131,
    n93,
    n80,
    n102
  );


  xnor
  g99
  (
    n134,
    n91,
    n50,
    n76
  );


  xnor
  g100
  (
    n166,
    n80,
    n55,
    n52
  );


  nand
  g101
  (
    n158,
    n62,
    n97,
    n54,
    n66
  );


  xor
  g102
  (
    n156,
    n61,
    n90,
    n36,
    n82
  );


  and
  g103
  (
    n152,
    n92,
    n45,
    n36,
    n54
  );


  or
  g104
  (
    n163,
    n102,
    n73,
    n44,
    n74
  );


  xnor
  g105
  (
    n136,
    n43,
    n77,
    n76,
    n99
  );


  and
  g106
  (
    n170,
    n100,
    n95,
    n69,
    n70
  );


  xnor
  g107
  (
    n144,
    n54,
    n42,
    n81,
    n98
  );


  xor
  g108
  (
    n130,
    n40,
    n82,
    n51,
    n85
  );


  and
  g109
  (
    n140,
    n77,
    n48,
    n78,
    n96
  );


  nand
  g110
  (
    n141,
    n42,
    n72,
    n47,
    n78
  );


  or
  g111
  (
    n133,
    n66,
    n89,
    n100,
    n39
  );


  nor
  g112
  (
    n164,
    n48,
    n72,
    n38,
    n49
  );


  and
  g113
  (
    n162,
    n103,
    n84,
    n53,
    n58
  );


  or
  g114
  (
    n122,
    n72,
    n92,
    n81,
    n43
  );


  xor
  g115
  (
    n142,
    n48,
    n68,
    n56,
    n42
  );


  xor
  g116
  (
    n132,
    n50,
    n72,
    n41,
    n98
  );


  nand
  g117
  (
    n135,
    n68,
    n54,
    n69,
    n88
  );


  and
  g118
  (
    n148,
    n51,
    n55,
    n63
  );


  nand
  g119
  (
    n126,
    n61,
    n68,
    n64,
    n74
  );


  nor
  g120
  (
    n137,
    n37,
    n83,
    n89,
    n97
  );


  xor
  g121
  (
    n118,
    n36,
    n71,
    n95,
    n44
  );


  xor
  g122
  (
    n168,
    n101,
    n39,
    n94,
    n96
  );


  or
  g123
  (
    n109,
    n87,
    n50,
    n69,
    n37
  );


  nand
  g124
  (
    n104,
    n76,
    n66,
    n93,
    n85
  );


  nand
  g125
  (
    n110,
    n40,
    n99,
    n76,
    n67
  );


  nand
  g126
  (
    n160,
    n90,
    n46,
    n65,
    n47
  );


  or
  g127
  (
    n117,
    n65,
    n83,
    n50,
    n89
  );


  xor
  g128
  (
    n123,
    n88,
    n71,
    n97,
    n83
  );


  and
  g129
  (
    n143,
    n75,
    n62,
    n85,
    n38
  );


  nand
  g130
  (
    n147,
    n85,
    n59,
    n65,
    n46
  );


  or
  g131
  (
    n119,
    n57,
    n40,
    n69,
    n91
  );


  nor
  g132
  (
    n154,
    n99,
    n53,
    n73,
    n59
  );


  xnor
  g133
  (
    n125,
    n95,
    n97,
    n77,
    n63
  );


  xor
  g134
  (
    n167,
    n83,
    n80,
    n86,
    n87
  );


  nor
  g135
  (
    n127,
    n55,
    n58,
    n60,
    n61
  );


  nor
  g136
  (
    n173,
    n41,
    n57,
    n71,
    n36
  );


  xnor
  g137
  (
    n146,
    n66,
    n101,
    n74,
    n78
  );


  xor
  g138
  (
    n157,
    n39,
    n51,
    n84,
    n49
  );


  nor
  g139
  (
    n151,
    n46,
    n88,
    n65,
    n40
  );


  or
  g140
  (
    n124,
    n86,
    n58,
    n101,
    n87
  );


  and
  g141
  (
    n139,
    n60,
    n94,
    n73,
    n81
  );


  and
  g142
  (
    n113,
    n48,
    n87,
    n90,
    n47
  );


  xnor
  g143
  (
    n128,
    n91,
    n68,
    n102,
    n37
  );


  nor
  g144
  (
    n155,
    n49,
    n79,
    n90,
    n52
  );


  or
  g145
  (
    n106,
    n88,
    n63,
    n73,
    n60
  );


  nor
  g146
  (
    n175,
    n98,
    n45,
    n53,
    n74
  );


  or
  g147
  (
    n145,
    n61,
    n70,
    n75
  );


  nand
  g148
  (
    n107,
    n64,
    n59,
    n79,
    n43
  );


  nand
  g149
  (
    n105,
    n45,
    n92,
    n41,
    n84
  );


  nor
  g150
  (
    n150,
    n71,
    n100,
    n49,
    n57
  );


  or
  g151
  (
    n174,
    n98,
    n84,
    n67,
    n46
  );


  nand
  g152
  (
    n114,
    n56,
    n81,
    n89,
    n53
  );


  xor
  g153
  (
    n111,
    n42,
    n103,
    n86
  );


  xor
  g154
  (
    n159,
    n38,
    n99,
    n44,
    n75
  );


  or
  g155
  (
    n138,
    n77,
    n79,
    n63,
    n62
  );


  nand
  g156
  (
    n121,
    n67,
    n47,
    n39,
    n80
  );


  not
  g157
  (
    n183,
    n119
  );


  not
  g158
  (
    n188,
    n122
  );


  and
  g159
  (
    n194,
    n162,
    n126
  );


  nand
  g160
  (
    n195,
    n104,
    n164,
    n151,
    n123
  );


  and
  g161
  (
    n189,
    n173,
    n141,
    n161,
    n145
  );


  or
  g162
  (
    n186,
    n148,
    n131,
    n128,
    n139
  );


  nor
  g163
  (
    n184,
    n112,
    n165,
    n153,
    n149
  );


  nor
  g164
  (
    n177,
    n171,
    n174,
    n113,
    n160
  );


  xnor
  g165
  (
    n187,
    n155,
    n134,
    n117,
    n137
  );


  nor
  g166
  (
    n181,
    n105,
    n142,
    n138,
    n132
  );


  nor
  g167
  (
    n176,
    n154,
    n146,
    n166,
    n135
  );


  or
  g168
  (
    n193,
    n129,
    n152,
    n156,
    n116
  );


  or
  g169
  (
    n179,
    n130,
    n169,
    n127,
    n114
  );


  xnor
  g170
  (
    n178,
    n168,
    n118,
    n144,
    n163
  );


  or
  g171
  (
    n190,
    n109,
    n111,
    n110,
    n108
  );


  or
  g172
  (
    AntiSAT_key_wire,
    n115,
    n157,
    n133,
    n124
  );


  and
  g173
  (
    n182,
    n140,
    n121,
    n150,
    n159
  );


  or
  g174
  (
    n192,
    n120,
    n167,
    n147,
    n136
  );


  nor
  g175
  (
    n191,
    n125,
    n107,
    n175,
    n170
  );


  and
  g176
  (
    n185,
    n106,
    n172,
    n158,
    n143
  );


  buf
  g177
  (
    nCHANGED,
    n13
  );


  xor
  KeyPIGate_0_0
  (
    g_input_0_0,
    keyIn_0_0,
    n1
  );


  xor
  KeyPIGate_0_18
  (
    gbar_input_0_0,
    keyIn_0_18,
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
  KeyPIGate_0_19
  (
    gbar_input_0_1,
    keyIn_0_19,
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
  KeyPIGate_0_20
  (
    gbar_input_0_2,
    keyIn_0_20,
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
  KeyPIGate_0_21
  (
    gbar_input_0_3,
    keyIn_0_21,
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
  KeyPIGate_0_22
  (
    gbar_input_0_4,
    keyIn_0_22,
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
  KeyPIGate_0_23
  (
    gbar_input_0_5,
    keyIn_0_23,
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
  KeyPIGate_0_24
  (
    gbar_input_0_6,
    keyIn_0_24,
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
  KeyPIGate_0_25
  (
    gbar_input_0_7,
    keyIn_0_25,
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
  KeyPIGate_0_26
  (
    gbar_input_0_8,
    keyIn_0_26,
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
  KeyPIGate_0_27
  (
    gbar_input_0_9,
    keyIn_0_27,
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
  KeyPIGate_0_28
  (
    gbar_input_0_10,
    keyIn_0_28,
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
  KeyPIGate_0_29
  (
    gbar_input_0_11,
    keyIn_0_29,
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
  KeyPIGate_0_30
  (
    gbar_input_0_12,
    keyIn_0_30,
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
  KeyPIGate_0_31
  (
    gbar_input_0_13,
    keyIn_0_31,
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
  KeyPIGate_0_32
  (
    gbar_input_0_14,
    keyIn_0_32,
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
  KeyPIGate_0_33
  (
    gbar_input_0_15,
    keyIn_0_33,
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
  KeyPIGate_0_34
  (
    gbar_input_0_16,
    keyIn_0_34,
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
  KeyPIGate_0_35
  (
    gbar_input_0_17,
    keyIn_0_35,
    n18
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
    g_input_0_17
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
    gbar_input_0_17
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
    n180,
    AntiSAT_output,
    AntiSAT_key_wire
  );


endmodule
