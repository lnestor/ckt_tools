

module Stat_100_57
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
  n32,
  n83,
  n102,
  n88,
  n70,
  n77,
  n92,
  n95,
  n115,
  n94,
  n99,
  n71,
  n106,
  n104,
  n78,
  n100,
  n87,
  n75,
  n98,
  n103,
  n127,
  n124,
  n121,
  n128,
  n129,
  n126,
  n130,
  n120,
  n123,
  n122,
  n125,
  n132,
  n131,
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
  keyIn_0_61,
  keyIn_0_62,
  keyIn_0_63
);

  input n1;input n2;input n3;input n4;input n5;input n6;input n7;input n8;input n9;input n10;input n11;input n12;input n13;input n14;input n15;input n16;input n17;input n18;input n19;input n20;input n21;input n22;input n23;input n24;input n25;input n26;input n27;input n28;input n29;input n30;input n31;input n32;input keyIn_0_0;input keyIn_0_1;input keyIn_0_2;input keyIn_0_3;input keyIn_0_4;input keyIn_0_5;input keyIn_0_6;input keyIn_0_7;input keyIn_0_8;input keyIn_0_9;input keyIn_0_10;input keyIn_0_11;input keyIn_0_12;input keyIn_0_13;input keyIn_0_14;input keyIn_0_15;input keyIn_0_16;input keyIn_0_17;input keyIn_0_18;input keyIn_0_19;input keyIn_0_20;input keyIn_0_21;input keyIn_0_22;input keyIn_0_23;input keyIn_0_24;input keyIn_0_25;input keyIn_0_26;input keyIn_0_27;input keyIn_0_28;input keyIn_0_29;input keyIn_0_30;input keyIn_0_31;input keyIn_0_32;input keyIn_0_33;input keyIn_0_34;input keyIn_0_35;input keyIn_0_36;input keyIn_0_37;input keyIn_0_38;input keyIn_0_39;input keyIn_0_40;input keyIn_0_41;input keyIn_0_42;input keyIn_0_43;input keyIn_0_44;input keyIn_0_45;input keyIn_0_46;input keyIn_0_47;input keyIn_0_48;input keyIn_0_49;input keyIn_0_50;input keyIn_0_51;input keyIn_0_52;input keyIn_0_53;input keyIn_0_54;input keyIn_0_55;input keyIn_0_56;input keyIn_0_57;input keyIn_0_58;input keyIn_0_59;input keyIn_0_60;input keyIn_0_61;input keyIn_0_62;input keyIn_0_63;
  output n83;output n102;output n88;output n70;output n77;output n92;output n95;output n115;output n94;output n99;output n71;output n106;output n104;output n78;output n100;output n87;output n75;output n98;output n103;output n127;output n124;output n121;output n128;output n129;output n126;output n130;output n120;output n123;output n122;output n125;output n132;output n131;
  wire n33;wire n34;wire n35;wire n36;wire n37;wire n38;wire n39;wire n40;wire n41;wire n42;wire n43;wire n44;wire n45;wire n46;wire n47;wire n48;wire n49;wire n50;wire n51;wire n52;wire n53;wire n54;wire n55;wire n56;wire n57;wire n58;wire n59;wire n60;wire n61;wire n62;wire n63;wire n64;wire n65;wire n66;wire n67;wire n68;wire n69;wire n72;wire n73;wire n74;wire n76;wire n79;wire n80;wire n81;wire n82;wire n84;wire n85;wire n86;wire n89;wire n90;wire n91;wire n93;wire n96;wire n97;wire n101;wire n105;wire n107;wire n108;wire n109;wire n110;wire n111;wire n112;wire n113;wire n114;wire n116;wire n117;wire n118;wire n119;wire g_input_0_0;wire gbar_input_0_0;wire g_input_0_1;wire gbar_input_0_1;wire g_input_0_2;wire gbar_input_0_2;wire g_input_0_3;wire gbar_input_0_3;wire g_input_0_4;wire gbar_input_0_4;wire g_input_0_5;wire gbar_input_0_5;wire g_input_0_6;wire gbar_input_0_6;wire g_input_0_7;wire gbar_input_0_7;wire g_input_0_8;wire gbar_input_0_8;wire g_input_0_9;wire gbar_input_0_9;wire g_input_0_10;wire gbar_input_0_10;wire g_input_0_11;wire gbar_input_0_11;wire g_input_0_12;wire gbar_input_0_12;wire g_input_0_13;wire gbar_input_0_13;wire g_input_0_14;wire gbar_input_0_14;wire g_input_0_15;wire gbar_input_0_15;wire g_input_0_16;wire gbar_input_0_16;wire g_input_0_17;wire gbar_input_0_17;wire g_input_0_18;wire gbar_input_0_18;wire g_input_0_19;wire gbar_input_0_19;wire g_input_0_20;wire gbar_input_0_20;wire g_input_0_21;wire gbar_input_0_21;wire g_input_0_22;wire gbar_input_0_22;wire g_input_0_23;wire gbar_input_0_23;wire g_input_0_24;wire gbar_input_0_24;wire g_input_0_25;wire gbar_input_0_25;wire g_input_0_26;wire gbar_input_0_26;wire g_input_0_27;wire gbar_input_0_27;wire g_input_0_28;wire gbar_input_0_28;wire g_input_0_29;wire gbar_input_0_29;wire g_input_0_30;wire gbar_input_0_30;wire g_input_0_31;wire gbar_input_0_31;wire f_g_wire;wire f_gbar_wire;wire AntiSAT_output;

  buf
  g0
  (
    n35,
    n2
  );


  buf
  g1
  (
    n41,
    n3
  );


  buf
  g2
  (
    n40,
    n1
  );


  not
  g3
  (
    n33,
    n1
  );


  not
  g4
  (
    n37,
    n3
  );


  buf
  g5
  (
    n36,
    n1
  );


  not
  g6
  (
    n42,
    n2
  );


  buf
  g7
  (
    n34,
    n2
  );


  not
  g8
  (
    n39,
    n2
  );


  buf
  g9
  (
    n38,
    n1
  );


  not
  g10
  (
    n53,
    n33
  );


  not
  g11
  (
    n50,
    n34
  );


  buf
  g12
  (
    n46,
    n35
  );


  buf
  g13
  (
    n44,
    n37
  );


  buf
  g14
  (
    n49,
    n34
  );


  not
  g15
  (
    n55,
    n36
  );


  buf
  g16
  (
    n43,
    n35
  );


  buf
  g17
  (
    n45,
    n36
  );


  buf
  g18
  (
    n52,
    n34
  );


  buf
  g19
  (
    n51,
    n36
  );


  buf
  g20
  (
    n47,
    n35
  );


  and
  g21
  (
    n54,
    n37,
    n33
  );


  or
  g22
  (
    n48,
    n33,
    n35,
    n34,
    n36
  );


  not
  g23
  (
    n64,
    n45
  );


  not
  g24
  (
    n59,
    n45
  );


  buf
  g25
  (
    n66,
    n47
  );


  not
  g26
  (
    n69,
    n46
  );


  not
  g27
  (
    n62,
    n49
  );


  not
  g28
  (
    n58,
    n46
  );


  not
  g29
  (
    n61,
    n44
  );


  not
  g30
  (
    n57,
    n45
  );


  not
  g31
  (
    n60,
    n48
  );


  not
  g32
  (
    n67,
    n43
  );


  buf
  g33
  (
    n63,
    n45
  );


  nor
  g34
  (
    n56,
    n46,
    n47,
    n49,
    n44
  );


  and
  g35
  (
    n68,
    n44,
    n48,
    n47
  );


  xnor
  g36
  (
    n65,
    n46,
    n44,
    n48
  );


  xnor
  g37
  (
    n118,
    n4,
    n27,
    n29,
    n62
  );


  nand
  g38
  (
    n106,
    n61,
    n20,
    n17
  );


  and
  g39
  (
    n82,
    n65,
    n22,
    n31,
    n56
  );


  nand
  g40
  (
    n77,
    n61,
    n28,
    n51,
    n63
  );


  nor
  g41
  (
    n100,
    n11,
    n17,
    n14,
    n64
  );


  or
  g42
  (
    n87,
    n54,
    n14,
    n24,
    n28
  );


  nand
  g43
  (
    n93,
    n30,
    n65,
    n26,
    n66
  );


  xnor
  g44
  (
    n117,
    n61,
    n5,
    n32,
    n13
  );


  nand
  g45
  (
    n105,
    n64,
    n16,
    n3,
    n25
  );


  and
  g46
  (
    n81,
    n60,
    n13,
    n55,
    n20
  );


  and
  g47
  (
    n95,
    n9,
    n3,
    n63,
    n15
  );


  xnor
  g48
  (
    n101,
    n64,
    n50,
    n8,
    n21
  );


  nor
  g49
  (
    n92,
    n55,
    n30,
    n49,
    n23
  );


  nand
  g50
  (
    n90,
    n6,
    n19,
    n27,
    n53
  );


  nand
  g51
  (
    n104,
    n65,
    n18,
    n31,
    n9
  );


  nor
  g52
  (
    n85,
    n53,
    n5,
    n8,
    n18
  );


  and
  g53
  (
    n79,
    n67,
    n7,
    n58,
    n11
  );


  xnor
  g54
  (
    n71,
    n66,
    n25,
    n22
  );


  xnor
  g55
  (
    n114,
    n69,
    n10,
    n9
  );


  or
  g56
  (
    n113,
    n62,
    n51,
    n12,
    n58
  );


  and
  g57
  (
    n109,
    n69,
    n57,
    n13,
    n54
  );


  or
  g58
  (
    n97,
    n4,
    n30,
    n29,
    n27
  );


  nor
  g59
  (
    n94,
    n27,
    n56,
    n19,
    n23
  );


  xor
  g60
  (
    n75,
    n59,
    n23,
    n16,
    n14
  );


  xor
  g61
  (
    n102,
    n58,
    n10,
    n24,
    n6
  );


  xnor
  g62
  (
    n119,
    n18,
    n32,
    n57,
    n28
  );


  or
  g63
  (
    n116,
    n32,
    n16,
    n13,
    n56
  );


  nand
  g64
  (
    n86,
    n49,
    n67,
    n31
  );


  xor
  g65
  (
    n110,
    n21,
    n16,
    n30,
    n22
  );


  and
  g66
  (
    n72,
    n21,
    n59,
    n69,
    n29
  );


  and
  g67
  (
    n70,
    n63,
    n65,
    n50,
    n68
  );


  and
  g68
  (
    n91,
    n29,
    n7,
    n17,
    n61
  );


  xnor
  g69
  (
    n96,
    n60,
    n57,
    n7,
    n24
  );


  nor
  g70
  (
    n73,
    n68,
    n19,
    n26,
    n53
  );


  xnor
  g71
  (
    n74,
    n24,
    n56,
    n17,
    n55
  );


  nor
  g72
  (
    n89,
    n60,
    n14,
    n28,
    n15
  );


  and
  g73
  (
    n98,
    n5,
    n12,
    n52,
    n15
  );


  nor
  g74
  (
    n111,
    n9,
    n51,
    n62,
    n21
  );


  nor
  g75
  (
    AntiSAT_key_wire,
    n58,
    n55,
    n5,
    n12
  );


  xnor
  g76
  (
    n115,
    n66,
    n4,
    n51,
    n60
  );


  xor
  g77
  (
    n112,
    n57,
    n4,
    n8,
    n20
  );


  or
  g78
  (
    n76,
    n32,
    n25,
    n10,
    n23
  );


  nor
  g79
  (
    n88,
    n62,
    n50,
    n53,
    n11
  );


  nand
  g80
  (
    n80,
    n68,
    n52,
    n15,
    n54
  );


  and
  g81
  (
    n78,
    n66,
    n26,
    n6,
    n19
  );


  nand
  g82
  (
    n107,
    n54,
    n59,
    n26,
    n31
  );


  and
  g83
  (
    n84,
    n59,
    n18,
    n67,
    n7
  );


  xor
  g84
  (
    n99,
    n63,
    n22,
    n11,
    n12
  );


  or
  g85
  (
    n83,
    n64,
    n8,
    n68,
    n69
  );


  nand
  g86
  (
    n108,
    n50,
    n52,
    n6
  );


  nand
  g87
  (
    n131,
    n89,
    n103,
    n96,
    n92
  );


  or
  g88
  (
    n125,
    n114,
    n111,
    n42,
    n41
  );


  or
  g89
  (
    n123,
    n108,
    n107,
    n38,
    n116
  );


  nand
  g90
  (
    n122,
    n112,
    n40,
    n109
  );


  nand
  g91
  (
    n126,
    n39,
    n98,
    n118,
    n42
  );


  nor
  g92
  (
    n127,
    n38,
    n106,
    n95,
    n97
  );


  or
  g93
  (
    n121,
    n113,
    n41,
    n93,
    n101
  );


  xor
  g94
  (
    n132,
    n102,
    n105,
    n40,
    n91
  );


  nand
  g95
  (
    n120,
    n117,
    n110,
    n119,
    n94
  );


  nand
  g96
  (
    n130,
    n39,
    n39,
    n40,
    n104
  );


  xor
  g97
  (
    n129,
    n99,
    n37,
    n42,
    n38
  );


  and
  g98
  (
    n128,
    n100,
    n41,
    n38
  );


  nor
  g99
  (
    n124,
    n115,
    n39,
    n90,
    n42
  );


  xor
  KeyPIGate_0_0
  (
    g_input_0_0,
    keyIn_0_0,
    n1
  );


  xor
  KeyPIGate_0_32
  (
    gbar_input_0_0,
    keyIn_0_32,
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
  KeyPIGate_0_33
  (
    gbar_input_0_1,
    keyIn_0_33,
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
  KeyPIGate_0_34
  (
    gbar_input_0_2,
    keyIn_0_34,
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
  KeyPIGate_0_35
  (
    gbar_input_0_3,
    keyIn_0_35,
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
  KeyPIGate_0_36
  (
    gbar_input_0_4,
    keyIn_0_36,
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
  KeyPIGate_0_37
  (
    gbar_input_0_5,
    keyIn_0_37,
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
  KeyPIGate_0_38
  (
    gbar_input_0_6,
    keyIn_0_38,
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
  KeyPIGate_0_39
  (
    gbar_input_0_7,
    keyIn_0_39,
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
  KeyPIGate_0_40
  (
    gbar_input_0_8,
    keyIn_0_40,
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
  KeyPIGate_0_41
  (
    gbar_input_0_9,
    keyIn_0_41,
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
  KeyPIGate_0_42
  (
    gbar_input_0_10,
    keyIn_0_42,
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
  KeyPIGate_0_43
  (
    gbar_input_0_11,
    keyIn_0_43,
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
  KeyPIGate_0_44
  (
    gbar_input_0_12,
    keyIn_0_44,
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
  KeyPIGate_0_45
  (
    gbar_input_0_13,
    keyIn_0_45,
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
  KeyPIGate_0_46
  (
    gbar_input_0_14,
    keyIn_0_46,
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
  KeyPIGate_0_47
  (
    gbar_input_0_15,
    keyIn_0_47,
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
  KeyPIGate_0_48
  (
    gbar_input_0_16,
    keyIn_0_48,
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
  KeyPIGate_0_49
  (
    gbar_input_0_17,
    keyIn_0_49,
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
  KeyPIGate_0_50
  (
    gbar_input_0_18,
    keyIn_0_50,
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
  KeyPIGate_0_51
  (
    gbar_input_0_19,
    keyIn_0_51,
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
  KeyPIGate_0_52
  (
    gbar_input_0_20,
    keyIn_0_52,
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
  KeyPIGate_0_53
  (
    gbar_input_0_21,
    keyIn_0_53,
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
  KeyPIGate_0_54
  (
    gbar_input_0_22,
    keyIn_0_54,
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
  KeyPIGate_0_55
  (
    gbar_input_0_23,
    keyIn_0_55,
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
  KeyPIGate_0_56
  (
    gbar_input_0_24,
    keyIn_0_56,
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
  KeyPIGate_0_57
  (
    gbar_input_0_25,
    keyIn_0_57,
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
  KeyPIGate_0_58
  (
    gbar_input_0_26,
    keyIn_0_58,
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
  KeyPIGate_0_59
  (
    gbar_input_0_27,
    keyIn_0_59,
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
  KeyPIGate_0_60
  (
    gbar_input_0_28,
    keyIn_0_60,
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
  KeyPIGate_0_61
  (
    gbar_input_0_29,
    keyIn_0_61,
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
  KeyPIGate_0_62
  (
    gbar_input_0_30,
    keyIn_0_62,
    n31
  );


  xor
  KeyPIGate_0_31
  (
    g_input_0_31,
    keyIn_0_31,
    n32
  );


  xor
  KeyPIGate_0_63
  (
    gbar_input_0_31,
    keyIn_0_63,
    n32
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
    g_input_0_30,
    g_input_0_31
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
    gbar_input_0_30,
    gbar_input_0_31
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
    n103,
    AntiSAT_output,
    AntiSAT_key_wire
  );


endmodule

