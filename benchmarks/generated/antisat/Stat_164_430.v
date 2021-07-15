

module Stat_164_430
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
  n29,
  n30,
  n31,
  n181,
  n193,
  n178,
  n189,
  n179,
  n184,
  n183,
  n182,
  n194,
  n186,
  n188,
  n192,
  n190,
  n191,
  n180,
  n195,
  n187,
  n185,
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
  keyIn_0_55,
  keyIn_0_56,
  keyIn_0_57,
  keyIn_0_58,
  keyIn_0_59,
  keyIn_0_60,
  keyIn_0_61
);

  input n1;input n2;input n3;input n4;input n5;input n6;input n7;input n8;input n9;input n10;input n11;input n12;input n13;input n14;input n15;input n16;input n17;input n18;input n19;input n20;input n21;input n22;input n23;input n24;input n25;input n26;input n27;input n28;input n29;input n30;input n31;input keyIn_0_0;input keyIn_0_1;input keyIn_0_2;input keyIn_0_3;input keyIn_0_4;input keyIn_0_5;input keyIn_0_6;input keyIn_0_7;input keyIn_0_8;input keyIn_0_9;input keyIn_0_10;input keyIn_0_11;input keyIn_0_12;input keyIn_0_13;input keyIn_0_14;input keyIn_0_15;input keyIn_0_16;input keyIn_0_17;input keyIn_0_18;input keyIn_0_19;input keyIn_0_20;input keyIn_0_21;input keyIn_0_22;input keyIn_0_23;input keyIn_0_24;input keyIn_0_25;input keyIn_0_26;input keyIn_0_27;input keyIn_0_28;input keyIn_0_29;input keyIn_0_30;input keyIn_0_31;input keyIn_0_32;input keyIn_0_33;input keyIn_0_34;input keyIn_0_35;input keyIn_0_36;input keyIn_0_37;input keyIn_0_38;input keyIn_0_39;input keyIn_0_40;input keyIn_0_41;input keyIn_0_42;input keyIn_0_43;input keyIn_0_44;input keyIn_0_45;input keyIn_0_46;input keyIn_0_47;input keyIn_0_48;input keyIn_0_49;input keyIn_0_50;input keyIn_0_51;input keyIn_0_52;input keyIn_0_53;input keyIn_0_54;input keyIn_0_55;input keyIn_0_56;input keyIn_0_57;input keyIn_0_58;input keyIn_0_59;input keyIn_0_60;input keyIn_0_61;
  output n181;output n193;output n178;output n189;output n179;output n184;output n183;output n182;output n194;output n186;output n188;output n192;output n190;output n191;output n180;output n195;output n187;output n185;
  wire n32;wire n33;wire n34;wire n35;wire n36;wire n37;wire n38;wire n39;wire n40;wire n41;wire n42;wire n43;wire n44;wire n45;wire n46;wire n47;wire n48;wire n49;wire n50;wire n51;wire n52;wire n53;wire n54;wire n55;wire n56;wire n57;wire n58;wire n59;wire n60;wire n61;wire n62;wire n63;wire n64;wire n65;wire n66;wire n67;wire n68;wire n69;wire n70;wire n71;wire n72;wire n73;wire n74;wire n75;wire n76;wire n77;wire n78;wire n79;wire n80;wire n81;wire n82;wire n83;wire n84;wire n85;wire n86;wire n87;wire n88;wire n89;wire n90;wire n91;wire n92;wire n93;wire n94;wire n95;wire n96;wire n97;wire n98;wire n99;wire n100;wire n101;wire n102;wire n103;wire n104;wire n105;wire n106;wire n107;wire n108;wire n109;wire n110;wire n111;wire n112;wire n113;wire n114;wire n115;wire n116;wire n117;wire n118;wire n119;wire n120;wire n121;wire n122;wire n123;wire n124;wire n125;wire n126;wire n127;wire n128;wire n129;wire n130;wire n131;wire n132;wire n133;wire n134;wire n135;wire n136;wire n137;wire n138;wire n139;wire n140;wire n141;wire n142;wire n143;wire n144;wire n145;wire n146;wire n147;wire n148;wire n149;wire n150;wire n151;wire n152;wire n153;wire n154;wire n155;wire n156;wire n157;wire n158;wire n159;wire n160;wire n161;wire n162;wire n163;wire n164;wire n165;wire n166;wire n167;wire n168;wire n169;wire n170;wire n171;wire n172;wire n173;wire n174;wire n175;wire n176;wire n177;wire g_input_0_0;wire gbar_input_0_0;wire g_input_0_1;wire gbar_input_0_1;wire g_input_0_2;wire gbar_input_0_2;wire g_input_0_3;wire gbar_input_0_3;wire g_input_0_4;wire gbar_input_0_4;wire g_input_0_5;wire gbar_input_0_5;wire g_input_0_6;wire gbar_input_0_6;wire g_input_0_7;wire gbar_input_0_7;wire g_input_0_8;wire gbar_input_0_8;wire g_input_0_9;wire gbar_input_0_9;wire g_input_0_10;wire gbar_input_0_10;wire g_input_0_11;wire gbar_input_0_11;wire g_input_0_12;wire gbar_input_0_12;wire g_input_0_13;wire gbar_input_0_13;wire g_input_0_14;wire gbar_input_0_14;wire g_input_0_15;wire gbar_input_0_15;wire g_input_0_16;wire gbar_input_0_16;wire g_input_0_17;wire gbar_input_0_17;wire g_input_0_18;wire gbar_input_0_18;wire g_input_0_19;wire gbar_input_0_19;wire g_input_0_20;wire gbar_input_0_20;wire g_input_0_21;wire gbar_input_0_21;wire g_input_0_22;wire gbar_input_0_22;wire g_input_0_23;wire gbar_input_0_23;wire g_input_0_24;wire gbar_input_0_24;wire g_input_0_25;wire gbar_input_0_25;wire g_input_0_26;wire gbar_input_0_26;wire g_input_0_27;wire gbar_input_0_27;wire g_input_0_28;wire gbar_input_0_28;wire g_input_0_29;wire gbar_input_0_29;wire g_input_0_30;wire gbar_input_0_30;wire f_g_wire;wire f_gbar_wire;wire AntiSAT_output;

  not
  g0
  (
    n53,
    n12
  );


  buf
  g1
  (
    n43,
    n10
  );


  buf
  g2
  (
    n85,
    n30
  );


  not
  g3
  (
    n113,
    n3
  );


  buf
  g4
  (
    n46,
    n5
  );


  buf
  g5
  (
    n66,
    n22
  );


  buf
  g6
  (
    n82,
    n21
  );


  not
  g7
  (
    n130,
    n20
  );


  not
  g8
  (
    n68,
    n22
  );


  buf
  g9
  (
    n126,
    n11
  );


  not
  g10
  (
    n119,
    n4
  );


  not
  g11
  (
    n98,
    n18
  );


  not
  g12
  (
    n110,
    n9
  );


  buf
  g13
  (
    n77,
    n28
  );


  buf
  g14
  (
    n79,
    n4
  );


  buf
  g15
  (
    n102,
    n30
  );


  not
  g16
  (
    n76,
    n12
  );


  not
  g17
  (
    n57,
    n1
  );


  not
  g18
  (
    n78,
    n20
  );


  not
  g19
  (
    n33,
    n22
  );


  buf
  g20
  (
    n70,
    n8
  );


  buf
  g21
  (
    n47,
    n29
  );


  not
  g22
  (
    n115,
    n2
  );


  not
  g23
  (
    n95,
    n1
  );


  buf
  g24
  (
    n106,
    n29
  );


  not
  g25
  (
    n51,
    n27
  );


  buf
  g26
  (
    n101,
    n17
  );


  not
  g27
  (
    n59,
    n31
  );


  buf
  g28
  (
    n122,
    n13
  );


  not
  g29
  (
    n92,
    n27
  );


  buf
  g30
  (
    n75,
    n19
  );


  not
  g31
  (
    n73,
    n1
  );


  not
  g32
  (
    n114,
    n17
  );


  buf
  g33
  (
    n36,
    n6
  );


  buf
  g34
  (
    n118,
    n11
  );


  not
  g35
  (
    n135,
    n21
  );


  not
  g36
  (
    n134,
    n24
  );


  not
  g37
  (
    n72,
    n26
  );


  buf
  g38
  (
    n49,
    n19
  );


  buf
  g39
  (
    n67,
    n7
  );


  not
  g40
  (
    n54,
    n23
  );


  buf
  g41
  (
    n50,
    n6
  );


  not
  g42
  (
    n99,
    n29
  );


  buf
  g43
  (
    n87,
    n23
  );


  not
  g44
  (
    n38,
    n16
  );


  not
  g45
  (
    n121,
    n14
  );


  not
  g46
  (
    n133,
    n23
  );


  buf
  g47
  (
    n40,
    n28
  );


  buf
  g48
  (
    n91,
    n2
  );


  not
  g49
  (
    n80,
    n26
  );


  buf
  g50
  (
    n63,
    n26
  );


  buf
  g51
  (
    n90,
    n28
  );


  not
  g52
  (
    n55,
    n25
  );


  buf
  g53
  (
    n105,
    n7
  );


  buf
  g54
  (
    n127,
    n24
  );


  not
  g55
  (
    n35,
    n8
  );


  buf
  g56
  (
    n52,
    n28
  );


  buf
  g57
  (
    n56,
    n21
  );


  buf
  g58
  (
    n132,
    n2
  );


  not
  g59
  (
    n88,
    n30
  );


  not
  g60
  (
    n74,
    n13
  );


  buf
  g61
  (
    n111,
    n26
  );


  buf
  g62
  (
    n93,
    n24
  );


  buf
  g63
  (
    n97,
    n30
  );


  buf
  g64
  (
    n64,
    n25
  );


  buf
  g65
  (
    n83,
    n19
  );


  buf
  g66
  (
    n103,
    n22
  );


  not
  g67
  (
    n58,
    n31
  );


  not
  g68
  (
    n107,
    n12
  );


  not
  g69
  (
    n125,
    n4
  );


  not
  g70
  (
    n104,
    n8
  );


  not
  g71
  (
    n116,
    n21
  );


  not
  g72
  (
    n128,
    n5
  );


  buf
  g73
  (
    n108,
    n19
  );


  buf
  g74
  (
    n34,
    n9
  );


  buf
  g75
  (
    n136,
    n27
  );


  not
  g76
  (
    n44,
    n3
  );


  buf
  g77
  (
    n62,
    n9
  );


  buf
  g78
  (
    n42,
    n17
  );


  not
  g79
  (
    n112,
    n7
  );


  not
  g80
  (
    n100,
    n3
  );


  buf
  g81
  (
    n45,
    n20
  );


  buf
  g82
  (
    n81,
    n10
  );


  buf
  g83
  (
    n60,
    n10
  );


  buf
  g84
  (
    n32,
    n13
  );


  not
  g85
  (
    n41,
    n16
  );


  buf
  g86
  (
    n65,
    n6
  );


  buf
  g87
  (
    n69,
    n24
  );


  not
  g88
  (
    n137,
    n15
  );


  not
  g89
  (
    n123,
    n14
  );


  buf
  g90
  (
    n48,
    n5
  );


  not
  g91
  (
    n129,
    n15
  );


  buf
  g92
  (
    n124,
    n25
  );


  not
  g93
  (
    n71,
    n18
  );


  buf
  g94
  (
    n89,
    n31
  );


  buf
  g95
  (
    n37,
    n11
  );


  buf
  g96
  (
    n86,
    n20
  );


  buf
  g97
  (
    n131,
    n31
  );


  not
  g98
  (
    n96,
    n16
  );


  buf
  g99
  (
    n109,
    n23
  );


  not
  g100
  (
    n84,
    n18
  );


  buf
  g101
  (
    n39,
    n25
  );


  buf
  g102
  (
    n117,
    n29
  );


  not
  g103
  (
    n120,
    n14
  );


  not
  g104
  (
    n61,
    n15
  );


  not
  g105
  (
    n94,
    n27
  );


  buf
  g106
  (
    n140,
    n44
  );


  buf
  g107
  (
    n149,
    n43
  );


  not
  g108
  (
    n142,
    n48
  );


  not
  g109
  (
    n148,
    n49
  );


  buf
  g110
  (
    n155,
    n47
  );


  not
  g111
  (
    n139,
    n32
  );


  not
  g112
  (
    n153,
    n53
  );


  buf
  g113
  (
    n151,
    n36
  );


  not
  g114
  (
    n141,
    n38
  );


  buf
  g115
  (
    n152,
    n46
  );


  buf
  g116
  (
    n145,
    n37
  );


  not
  g117
  (
    n150,
    n33
  );


  not
  g118
  (
    n154,
    n34
  );


  not
  g119
  (
    n144,
    n41
  );


  buf
  g120
  (
    n147,
    n51
  );


  buf
  g121
  (
    n143,
    n52
  );


  buf
  g122
  (
    n156,
    n40
  );


  not
  g123
  (
    n138,
    n42
  );


  not
  g124
  (
    n157,
    n39
  );


  buf
  g125
  (
    n158,
    n45
  );


  nand
  g126
  (
    n146,
    n50,
    n35
  );


  not
  g127
  (
    n163,
    n54
  );


  buf
  g128
  (
    n159,
    n55
  );


  not
  g129
  (
    n167,
    n148
  );


  not
  g130
  (
    n162,
    n69
  );


  buf
  g131
  (
    n160,
    n84
  );


  not
  g132
  (
    n164,
    n146
  );


  and
  g133
  (
    n172,
    n71,
    n153
  );


  xnor
  g134
  (
    n165,
    n85,
    n67
  );


  nor
  g135
  (
    n174,
    n142,
    n86
  );


  nor
  g136
  (
    n169,
    n73,
    n81,
    n143,
    n64
  );


  and
  g137
  (
    n168,
    n61,
    n140,
    n78,
    n80
  );


  and
  g138
  (
    n175,
    n145,
    n141,
    n151,
    n72
  );


  xor
  g139
  (
    n161,
    n77,
    n65,
    n62,
    n144
  );


  xnor
  g140
  (
    n171,
    n138,
    n68,
    n83,
    n156
  );


  xnor
  g141
  (
    n170,
    n63,
    n57,
    n139,
    n60
  );


  and
  g142
  (
    n166,
    n70,
    n149,
    n154,
    n58
  );


  or
  g143
  (
    n176,
    n66,
    n74,
    n76,
    n155
  );


  nand
  g144
  (
    n173,
    n56,
    n75,
    n147,
    n150
  );


  and
  g145
  (
    n177,
    n152,
    n82,
    n59,
    n79
  );


  xnor
  g146
  (
    n195,
    n103,
    n134,
    n176,
    n177
  );


  and
  g147
  (
    n188,
    n137,
    n93,
    n112,
    n92
  );


  or
  g148
  (
    n190,
    n124,
    n115,
    n88,
    n131
  );


  nand
  g149
  (
    n184,
    n104,
    n135,
    n173,
    n105
  );


  and
  g150
  (
    n194,
    n163,
    n161,
    n175,
    n128
  );


  xor
  g151
  (
    AntiSAT_key_wire,
    n167,
    n127,
    n117,
    n174
  );


  xnor
  g152
  (
    n192,
    n97,
    n106,
    n125,
    n120
  );


  or
  g153
  (
    n180,
    n90,
    n101,
    n165,
    n116
  );


  and
  g154
  (
    n179,
    n94,
    n87,
    n126,
    n136
  );


  or
  g155
  (
    n193,
    n133,
    n102,
    n108,
    n157
  );


  xnor
  g156
  (
    n186,
    n166,
    n118,
    n164,
    n119
  );


  or
  g157
  (
    n183,
    n99,
    n114,
    n98,
    n121
  );


  and
  g158
  (
    n182,
    n169,
    n111,
    n162,
    n168
  );


  nor
  g159
  (
    n191,
    n113,
    n130,
    n123,
    n107
  );


  and
  g160
  (
    n187,
    n122,
    n160,
    n170,
    n96
  );


  xnor
  g161
  (
    n185,
    n132,
    n110,
    n159,
    n172
  );


  and
  g162
  (
    n178,
    n100,
    n171,
    n95,
    n129
  );


  nand
  g163
  (
    n181,
    n158,
    n91,
    n109,
    n89
  );


  xor
  KeyPIGate_0_0
  (
    g_input_0_0,
    keyIn_0_0,
    n1
  );


  xor
  KeyPIGate_0_31
  (
    gbar_input_0_0,
    keyIn_0_31,
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
  KeyPIGate_0_32
  (
    gbar_input_0_1,
    keyIn_0_32,
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
  KeyPIGate_0_33
  (
    gbar_input_0_2,
    keyIn_0_33,
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
  KeyPIGate_0_34
  (
    gbar_input_0_3,
    keyIn_0_34,
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
  KeyPIGate_0_35
  (
    gbar_input_0_4,
    keyIn_0_35,
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
  KeyPIGate_0_36
  (
    gbar_input_0_5,
    keyIn_0_36,
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
  KeyPIGate_0_37
  (
    gbar_input_0_6,
    keyIn_0_37,
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
  KeyPIGate_0_38
  (
    gbar_input_0_7,
    keyIn_0_38,
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
  KeyPIGate_0_39
  (
    gbar_input_0_8,
    keyIn_0_39,
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
  KeyPIGate_0_40
  (
    gbar_input_0_9,
    keyIn_0_40,
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
  KeyPIGate_0_41
  (
    gbar_input_0_10,
    keyIn_0_41,
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
  KeyPIGate_0_42
  (
    gbar_input_0_11,
    keyIn_0_42,
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
  KeyPIGate_0_43
  (
    gbar_input_0_12,
    keyIn_0_43,
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
  KeyPIGate_0_44
  (
    gbar_input_0_13,
    keyIn_0_44,
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
  KeyPIGate_0_45
  (
    gbar_input_0_14,
    keyIn_0_45,
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
  KeyPIGate_0_46
  (
    gbar_input_0_15,
    keyIn_0_46,
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
  KeyPIGate_0_47
  (
    gbar_input_0_16,
    keyIn_0_47,
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
  KeyPIGate_0_48
  (
    gbar_input_0_17,
    keyIn_0_48,
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
  KeyPIGate_0_49
  (
    gbar_input_0_18,
    keyIn_0_49,
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
  KeyPIGate_0_50
  (
    gbar_input_0_19,
    keyIn_0_50,
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
  KeyPIGate_0_51
  (
    gbar_input_0_20,
    keyIn_0_51,
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
  KeyPIGate_0_52
  (
    gbar_input_0_21,
    keyIn_0_52,
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
  KeyPIGate_0_53
  (
    gbar_input_0_22,
    keyIn_0_53,
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
  KeyPIGate_0_54
  (
    gbar_input_0_23,
    keyIn_0_54,
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
  KeyPIGate_0_55
  (
    gbar_input_0_24,
    keyIn_0_55,
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
  KeyPIGate_0_56
  (
    gbar_input_0_25,
    keyIn_0_56,
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
  KeyPIGate_0_57
  (
    gbar_input_0_26,
    keyIn_0_57,
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
  KeyPIGate_0_58
  (
    gbar_input_0_27,
    keyIn_0_58,
    n28
  );


  xor
  KeyPIGate_0_28
  (
    g_input_0_28,
    keyIn_0_28,
    n29
  );


  xor
  KeyPIGate_0_59
  (
    gbar_input_0_28,
    keyIn_0_59,
    n29
  );


  xor
  KeyPIGate_0_29
  (
    g_input_0_29,
    keyIn_0_29,
    n30
  );


  xor
  KeyPIGate_0_60
  (
    gbar_input_0_29,
    keyIn_0_60,
    n30
  );


  xor
  KeyPIGate_0_30
  (
    g_input_0_30,
    keyIn_0_30,
    n31
  );


  xor
  KeyPIGate_0_61
  (
    gbar_input_0_30,
    keyIn_0_61,
    n31
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
    g_input_0_27,
    g_input_0_28,
    g_input_0_29,
    g_input_0_30
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
    gbar_input_0_27,
    gbar_input_0_28,
    gbar_input_0_29,
    gbar_input_0_30
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
    n189,
    AntiSAT_output,
    AntiSAT_key_wire
  );


endmodule

