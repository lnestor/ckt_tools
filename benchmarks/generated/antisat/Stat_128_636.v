

module Stat_128_636
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
  n144,
  n135,
  n134,
  n129,
  n126,
  n147,
  n138,
  n136,
  n139,
  n140,
  n125,
  n137,
  n146,
  n142,
  n132,
  n127,
  n130,
  n143,
  n145,
  n133,
  n141,
  n148,
  n131,
  n128,
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
  keyIn_0_39
);

  input n1;input n2;input n3;input n4;input n5;input n6;input n7;input n8;input n9;input n10;input n11;input n12;input n13;input n14;input n15;input n16;input n17;input n18;input n19;input n20;input keyIn_0_0;input keyIn_0_1;input keyIn_0_2;input keyIn_0_3;input keyIn_0_4;input keyIn_0_5;input keyIn_0_6;input keyIn_0_7;input keyIn_0_8;input keyIn_0_9;input keyIn_0_10;input keyIn_0_11;input keyIn_0_12;input keyIn_0_13;input keyIn_0_14;input keyIn_0_15;input keyIn_0_16;input keyIn_0_17;input keyIn_0_18;input keyIn_0_19;input keyIn_0_20;input keyIn_0_21;input keyIn_0_22;input keyIn_0_23;input keyIn_0_24;input keyIn_0_25;input keyIn_0_26;input keyIn_0_27;input keyIn_0_28;input keyIn_0_29;input keyIn_0_30;input keyIn_0_31;input keyIn_0_32;input keyIn_0_33;input keyIn_0_34;input keyIn_0_35;input keyIn_0_36;input keyIn_0_37;input keyIn_0_38;input keyIn_0_39;
  output n144;output n135;output n134;output n129;output n126;output n147;output n138;output n136;output n139;output n140;output n125;output n137;output n146;output n142;output n132;output n127;output n130;output n143;output n145;output n133;output n141;output n148;output n131;output n128;
  wire n21;wire n22;wire n23;wire n24;wire n25;wire n26;wire n27;wire n28;wire n29;wire n30;wire n31;wire n32;wire n33;wire n34;wire n35;wire n36;wire n37;wire n38;wire n39;wire n40;wire n41;wire n42;wire n43;wire n44;wire n45;wire n46;wire n47;wire n48;wire n49;wire n50;wire n51;wire n52;wire n53;wire n54;wire n55;wire n56;wire n57;wire n58;wire n59;wire n60;wire n61;wire n62;wire n63;wire n64;wire n65;wire n66;wire n67;wire n68;wire n69;wire n70;wire n71;wire n72;wire n73;wire n74;wire n75;wire n76;wire n77;wire n78;wire n79;wire n80;wire n81;wire n82;wire n83;wire n84;wire n85;wire n86;wire n87;wire n88;wire n89;wire n90;wire n91;wire n92;wire n93;wire n94;wire n95;wire n96;wire n97;wire n98;wire n99;wire n100;wire n101;wire n102;wire n103;wire n104;wire n105;wire n106;wire n107;wire n108;wire n109;wire n110;wire n111;wire n112;wire n113;wire n114;wire n115;wire n116;wire n117;wire n118;wire n119;wire n120;wire n121;wire n122;wire n123;wire n124;wire g_input_0_0;wire gbar_input_0_0;wire g_input_0_1;wire gbar_input_0_1;wire g_input_0_2;wire gbar_input_0_2;wire g_input_0_3;wire gbar_input_0_3;wire g_input_0_4;wire gbar_input_0_4;wire g_input_0_5;wire gbar_input_0_5;wire g_input_0_6;wire gbar_input_0_6;wire g_input_0_7;wire gbar_input_0_7;wire g_input_0_8;wire gbar_input_0_8;wire g_input_0_9;wire gbar_input_0_9;wire g_input_0_10;wire gbar_input_0_10;wire g_input_0_11;wire gbar_input_0_11;wire g_input_0_12;wire gbar_input_0_12;wire g_input_0_13;wire gbar_input_0_13;wire g_input_0_14;wire gbar_input_0_14;wire g_input_0_15;wire gbar_input_0_15;wire g_input_0_16;wire gbar_input_0_16;wire g_input_0_17;wire gbar_input_0_17;wire g_input_0_18;wire gbar_input_0_18;wire g_input_0_19;wire gbar_input_0_19;wire f_g_wire;wire f_gbar_wire;wire AntiSAT_output;

  buf
  g0
  (
    n24,
    n2
  );


  buf
  g1
  (
    n25,
    n3
  );


  not
  g2
  (
    n27,
    n1
  );


  buf
  g3
  (
    n21,
    n4
  );


  buf
  g4
  (
    n23,
    n2
  );


  not
  g5
  (
    n22,
    n1
  );


  buf
  g6
  (
    n26,
    n3
  );


  not
  g7
  (
    n41,
    n27
  );


  buf
  g8
  (
    n49,
    n21
  );


  buf
  g9
  (
    n32,
    n22
  );


  buf
  g10
  (
    n47,
    n25
  );


  buf
  g11
  (
    n31,
    n25
  );


  buf
  g12
  (
    n30,
    n24
  );


  not
  g13
  (
    n34,
    n26
  );


  not
  g14
  (
    n51,
    n22
  );


  not
  g15
  (
    n33,
    n22
  );


  not
  g16
  (
    n38,
    n24
  );


  not
  g17
  (
    n35,
    n26
  );


  buf
  g18
  (
    n29,
    n27
  );


  not
  g19
  (
    n28,
    n27
  );


  buf
  g20
  (
    n52,
    n26
  );


  not
  g21
  (
    n50,
    n25
  );


  not
  g22
  (
    n43,
    n25
  );


  not
  g23
  (
    n42,
    n23
  );


  not
  g24
  (
    n48,
    n26
  );


  buf
  g25
  (
    n37,
    n24
  );


  buf
  g26
  (
    n46,
    n21
  );


  buf
  g27
  (
    n36,
    n24
  );


  buf
  g28
  (
    n44,
    n21
  );


  not
  g29
  (
    n39,
    n23
  );


  not
  g30
  (
    n45,
    n21
  );


  buf
  g31
  (
    n40,
    n23
  );


  not
  g32
  (
    n54,
    n23
  );


  not
  g33
  (
    n53,
    n22
  );


  not
  g34
  (
    n80,
    n18
  );


  buf
  g35
  (
    n62,
    n6
  );


  not
  g36
  (
    n69,
    n41
  );


  buf
  g37
  (
    n91,
    n39
  );


  not
  g38
  (
    n61,
    n44
  );


  not
  g39
  (
    n64,
    n6
  );


  not
  g40
  (
    n82,
    n14
  );


  buf
  g41
  (
    n59,
    n43
  );


  buf
  g42
  (
    n79,
    n37
  );


  buf
  g43
  (
    n58,
    n15
  );


  not
  g44
  (
    n68,
    n40
  );


  buf
  g45
  (
    n76,
    n42
  );


  not
  g46
  (
    n70,
    n13
  );


  buf
  g47
  (
    n66,
    n41
  );


  not
  g48
  (
    n83,
    n33
  );


  not
  g49
  (
    n100,
    n29
  );


  not
  g50
  (
    n65,
    n36
  );


  buf
  g51
  (
    n74,
    n33
  );


  not
  g52
  (
    n99,
    n11
  );


  buf
  g53
  (
    n86,
    n38
  );


  buf
  g54
  (
    n78,
    n18
  );


  buf
  g55
  (
    n92,
    n28
  );


  nand
  g56
  (
    n89,
    n5,
    n31,
    n36
  );


  nand
  g57
  (
    n95,
    n35,
    n32,
    n31,
    n14
  );


  nor
  g58
  (
    n85,
    n19,
    n17,
    n20,
    n13
  );


  xor
  g59
  (
    n102,
    n47,
    n29,
    n39,
    n35
  );


  xor
  g60
  (
    n101,
    n19,
    n42,
    n28,
    n46
  );


  nor
  g61
  (
    n84,
    n48,
    n10,
    n40,
    n39
  );


  nor
  g62
  (
    n90,
    n34,
    n37,
    n45,
    n42
  );


  nand
  g63
  (
    n94,
    n11,
    n29,
    n12,
    n30
  );


  nand
  g64
  (
    n71,
    n35,
    n34,
    n20,
    n33
  );


  nor
  g65
  (
    n88,
    n16,
    n46,
    n32,
    n13
  );


  nor
  g66
  (
    n63,
    n18,
    n11,
    n43,
    n19
  );


  and
  g67
  (
    n98,
    n43,
    n20,
    n34,
    n9
  );


  xor
  g68
  (
    n103,
    n17,
    n15,
    n16,
    n31
  );


  or
  g69
  (
    n73,
    n10,
    n12,
    n7,
    n17
  );


  and
  g70
  (
    n81,
    n14,
    n36,
    n37,
    n43
  );


  or
  g71
  (
    n93,
    n8,
    n45,
    n35
  );


  xnor
  g72
  (
    n77,
    n20,
    n10,
    n41,
    n44
  );


  and
  g73
  (
    n87,
    n17,
    n28,
    n44,
    n46
  );


  and
  g74
  (
    n97,
    n39,
    n15,
    n47,
    n13
  );


  or
  g75
  (
    n72,
    n48,
    n29,
    n47,
    n30
  );


  nand
  g76
  (
    n56,
    n12,
    n34,
    n28,
    n41
  );


  nand
  g77
  (
    n55,
    n31,
    n8,
    n14,
    n5
  );


  or
  g78
  (
    n67,
    n33,
    n46,
    n10,
    n36
  );


  nand
  g79
  (
    n104,
    n7,
    n40,
    n16,
    n19
  );


  xnor
  g80
  (
    n75,
    n45,
    n18,
    n32,
    n4
  );


  xnor
  g81
  (
    n96,
    n40,
    n38,
    n37,
    n11
  );


  xnor
  g82
  (
    n57,
    n12,
    n16,
    n30,
    n42
  );


  nor
  g83
  (
    n60,
    n47,
    n38,
    n30
  );


  nor
  g84
  (
    n105,
    n15,
    n9,
    n32,
    n44
  );


  xor
  g85
  (
    n108,
    n62,
    n57,
    n63,
    n64
  );


  or
  g86
  (
    n107,
    n59,
    n66,
    n56,
    n61
  );


  xor
  g87
  (
    n112,
    n65,
    n60,
    n66,
    n67
  );


  xor
  g88
  (
    n109,
    n58,
    n60,
    n65,
    n55
  );


  xor
  g89
  (
    n110,
    n57,
    n62,
    n63,
    n59
  );


  xor
  g90
  (
    n106,
    n67,
    n27,
    n68
  );


  nor
  g91
  (
    n111,
    n58,
    n64,
    n56,
    n61
  );


  and
  g92
  (
    n124,
    n73,
    n52,
    n109,
    n53
  );


  or
  g93
  (
    n119,
    n108,
    n50,
    n72,
    n71
  );


  or
  g94
  (
    n113,
    n49,
    n110,
    n71,
    n112
  );


  xor
  g95
  (
    n114,
    n54,
    n111,
    n69
  );


  nand
  g96
  (
    n120,
    n51,
    n50,
    n49,
    n112
  );


  nand
  g97
  (
    n118,
    n69,
    n54,
    n109
  );


  and
  g98
  (
    n115,
    n51,
    n51,
    n50,
    n52
  );


  or
  g99
  (
    n122,
    n73,
    n106,
    n52
  );


  or
  g100
  (
    n116,
    n72,
    n53,
    n70
  );


  xor
  g101
  (
    n123,
    n53,
    n48,
    n70
  );


  xor
  g102
  (
    n117,
    n110,
    n50,
    n49
  );


  and
  g103
  (
    n121,
    n107,
    n108,
    n51,
    n54
  );


  xnor
  g104
  (
    n147,
    n122,
    n82,
    n116,
    n93
  );


  nand
  g105
  (
    n141,
    n94,
    n93,
    n102,
    n75
  );


  nand
  g106
  (
    n130,
    n105,
    n123,
    n82,
    n79
  );


  nor
  g107
  (
    n148,
    n119,
    n118,
    n122,
    n124
  );


  or
  g108
  (
    n131,
    n115,
    n92,
    n90,
    n75
  );


  or
  g109
  (
    n138,
    n85,
    n84,
    n102,
    n78
  );


  nor
  g110
  (
    n145,
    n83,
    n89,
    n74,
    n120
  );


  xor
  g111
  (
    n136,
    n105,
    n114,
    n85,
    n79
  );


  xor
  g112
  (
    n129,
    n78,
    n101,
    n99,
    n94
  );


  nand
  g113
  (
    n146,
    n102,
    n102,
    n77,
    n97
  );


  xor
  g114
  (
    n142,
    n99,
    n89,
    n86,
    n123
  );


  nor
  g115
  (
    AntiSAT_key_wire,
    n81,
    n103,
    n105,
    n95
  );


  and
  g116
  (
    n134,
    n100,
    n83,
    n98,
    n116
  );


  nand
  g117
  (
    n126,
    n114,
    n80,
    n103,
    n124
  );


  xor
  g118
  (
    n132,
    n96,
    n96,
    n119,
    n100
  );


  nand
  g119
  (
    n128,
    n117,
    n92,
    n86,
    n113
  );


  nand
  g120
  (
    n143,
    n74,
    n76,
    n103,
    n95
  );


  and
  g121
  (
    n135,
    n91,
    n77,
    n120,
    n115
  );


  and
  g122
  (
    n125,
    n121,
    n104
  );


  nand
  g123
  (
    n127,
    n81,
    n113,
    n117,
    n87
  );


  or
  g124
  (
    n137,
    n84,
    n97,
    n118,
    n76
  );


  or
  g125
  (
    n140,
    n101,
    n88,
    n104
  );


  xnor
  g126
  (
    n144,
    n121,
    n103,
    n98,
    n105
  );


  or
  g127
  (
    n139,
    n91,
    n87,
    n90,
    n80
  );


  xor
  KeyPIGate_0_0
  (
    g_input_0_0,
    keyIn_0_0,
    n1
  );


  xor
  KeyPIGate_0_20
  (
    gbar_input_0_0,
    keyIn_0_20,
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
  KeyPIGate_0_21
  (
    gbar_input_0_1,
    keyIn_0_21,
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
  KeyPIGate_0_22
  (
    gbar_input_0_2,
    keyIn_0_22,
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
  KeyPIGate_0_23
  (
    gbar_input_0_3,
    keyIn_0_23,
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
  KeyPIGate_0_24
  (
    gbar_input_0_4,
    keyIn_0_24,
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
  KeyPIGate_0_25
  (
    gbar_input_0_5,
    keyIn_0_25,
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
  KeyPIGate_0_26
  (
    gbar_input_0_6,
    keyIn_0_26,
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
  KeyPIGate_0_27
  (
    gbar_input_0_7,
    keyIn_0_27,
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
  KeyPIGate_0_28
  (
    gbar_input_0_8,
    keyIn_0_28,
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
  KeyPIGate_0_29
  (
    gbar_input_0_9,
    keyIn_0_29,
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
  KeyPIGate_0_30
  (
    gbar_input_0_10,
    keyIn_0_30,
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
  KeyPIGate_0_31
  (
    gbar_input_0_11,
    keyIn_0_31,
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
  KeyPIGate_0_32
  (
    gbar_input_0_12,
    keyIn_0_32,
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
  KeyPIGate_0_33
  (
    gbar_input_0_13,
    keyIn_0_33,
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
  KeyPIGate_0_34
  (
    gbar_input_0_14,
    keyIn_0_34,
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
  KeyPIGate_0_35
  (
    gbar_input_0_15,
    keyIn_0_35,
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
  KeyPIGate_0_36
  (
    gbar_input_0_16,
    keyIn_0_36,
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
  KeyPIGate_0_37
  (
    gbar_input_0_17,
    keyIn_0_37,
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
  KeyPIGate_0_38
  (
    gbar_input_0_18,
    keyIn_0_38,
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
  KeyPIGate_0_39
  (
    gbar_input_0_19,
    keyIn_0_39,
    n20
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
    g_input_0_19
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
    gbar_input_0_19
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
    n133,
    AntiSAT_output,
    AntiSAT_key_wire
  );


endmodule

