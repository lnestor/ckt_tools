

module Stat_100_43
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
  n108,
  n118,
  n127,
  n131,
  n124,
  n115,
  n125,
  n116,
  n101,
  n126,
  n129,
  n111,
  n112,
  n110,
  n120,
  n123,
  n104,
  n130,
  n113,
  n132,
  n128,
  n102,
  n114,
  n119,
  n109,
  n121,
  n122,
  n105,
  n106,
  n107,
  n117,
  n103,
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
  output n108;output n118;output n127;output n131;output n124;output n115;output n125;output n116;output n101;output n126;output n129;output n111;output n112;output n110;output n120;output n123;output n104;output n130;output n113;output n132;output n128;output n102;output n114;output n119;output n109;output n121;output n122;output n105;output n106;output n107;output n117;output n103;
  wire n33;wire n34;wire n35;wire n36;wire n37;wire n38;wire n39;wire n40;wire n41;wire n42;wire n43;wire n44;wire n45;wire n46;wire n47;wire n48;wire n49;wire n50;wire n51;wire n52;wire n53;wire n54;wire n55;wire n56;wire n57;wire n58;wire n59;wire n60;wire n61;wire n62;wire n63;wire n64;wire n65;wire n66;wire n67;wire n68;wire n69;wire n70;wire n71;wire n72;wire n73;wire n74;wire n75;wire n76;wire n77;wire n78;wire n79;wire n80;wire n81;wire n82;wire n83;wire n84;wire n85;wire n86;wire n87;wire n88;wire n89;wire n90;wire n91;wire n92;wire n93;wire n94;wire n95;wire n96;wire n97;wire n98;wire n99;wire n100;wire g_input_0_0;wire gbar_input_0_0;wire g_input_0_1;wire gbar_input_0_1;wire g_input_0_2;wire gbar_input_0_2;wire g_input_0_3;wire gbar_input_0_3;wire g_input_0_4;wire gbar_input_0_4;wire g_input_0_5;wire gbar_input_0_5;wire g_input_0_6;wire gbar_input_0_6;wire g_input_0_7;wire gbar_input_0_7;wire g_input_0_8;wire gbar_input_0_8;wire g_input_0_9;wire gbar_input_0_9;wire g_input_0_10;wire gbar_input_0_10;wire g_input_0_11;wire gbar_input_0_11;wire g_input_0_12;wire gbar_input_0_12;wire g_input_0_13;wire gbar_input_0_13;wire g_input_0_14;wire gbar_input_0_14;wire g_input_0_15;wire gbar_input_0_15;wire g_input_0_16;wire gbar_input_0_16;wire g_input_0_17;wire gbar_input_0_17;wire g_input_0_18;wire gbar_input_0_18;wire g_input_0_19;wire gbar_input_0_19;wire g_input_0_20;wire gbar_input_0_20;wire g_input_0_21;wire gbar_input_0_21;wire g_input_0_22;wire gbar_input_0_22;wire g_input_0_23;wire gbar_input_0_23;wire g_input_0_24;wire gbar_input_0_24;wire g_input_0_25;wire gbar_input_0_25;wire g_input_0_26;wire gbar_input_0_26;wire g_input_0_27;wire gbar_input_0_27;wire g_input_0_28;wire gbar_input_0_28;wire g_input_0_29;wire gbar_input_0_29;wire g_input_0_30;wire gbar_input_0_30;wire g_input_0_31;wire gbar_input_0_31;wire f_g_wire;wire f_gbar_wire;wire AntiSAT_output;

  not
  g0
  (
    n43,
    n3
  );


  not
  g1
  (
    n46,
    n4
  );


  not
  g2
  (
    n33,
    n2
  );


  buf
  g3
  (
    n39,
    n2
  );


  not
  g4
  (
    n44,
    n2
  );


  not
  g5
  (
    n47,
    n1
  );


  not
  g6
  (
    n38,
    n1
  );


  not
  g7
  (
    n35,
    n3
  );


  not
  g8
  (
    n36,
    n3
  );


  not
  g9
  (
    n37,
    n3
  );


  not
  g10
  (
    n40,
    n4
  );


  not
  g11
  (
    n45,
    n1
  );


  buf
  g12
  (
    n34,
    n4
  );


  not
  g13
  (
    n41,
    n1
  );


  buf
  g14
  (
    n42,
    n2
  );


  buf
  g15
  (
    n55,
    n7
  );


  not
  g16
  (
    n76,
    n44
  );


  not
  g17
  (
    n49,
    n24
  );


  not
  g18
  (
    n57,
    n27
  );


  not
  g19
  (
    n63,
    n38
  );


  buf
  g20
  (
    n73,
    n35
  );


  or
  g21
  (
    n79,
    n12,
    n9,
    n13
  );


  xnor
  g22
  (
    n89,
    n34,
    n24,
    n8,
    n7
  );


  nand
  g23
  (
    n88,
    n38,
    n5,
    n22,
    n21
  );


  xor
  g24
  (
    n78,
    n29,
    n11,
    n31,
    n39
  );


  xor
  g25
  (
    n51,
    n37,
    n30,
    n20,
    n43
  );


  and
  g26
  (
    n92,
    n23,
    n20,
    n14,
    n44
  );


  xnor
  g27
  (
    n48,
    n27,
    n10,
    n34,
    n15
  );


  nand
  g28
  (
    n71,
    n39,
    n19,
    n17,
    n37
  );


  nand
  g29
  (
    n72,
    n34,
    n15,
    n29,
    n31
  );


  xnor
  g30
  (
    n64,
    n41,
    n37,
    n6,
    n26
  );


  nor
  g31
  (
    n75,
    n22,
    n22,
    n30,
    n35
  );


  nand
  g32
  (
    n77,
    n29,
    n44,
    n18,
    n17
  );


  nand
  g33
  (
    n56,
    n33,
    n29,
    n10,
    n17
  );


  xor
  g34
  (
    n53,
    n43,
    n28,
    n41,
    n14
  );


  or
  g35
  (
    n81,
    n32,
    n21,
    n42,
    n26
  );


  or
  g36
  (
    n91,
    n17,
    n12,
    n30,
    n26
  );


  nand
  g37
  (
    n61,
    n16,
    n9,
    n26,
    n43
  );


  xor
  g38
  (
    n52,
    n31,
    n42,
    n20,
    n30
  );


  xnor
  g39
  (
    n82,
    n21,
    n19,
    n6,
    n5
  );


  and
  g40
  (
    n84,
    n45,
    n16,
    n9,
    n23
  );


  xor
  g41
  (
    n86,
    n18,
    n18,
    n24,
    n36
  );


  xor
  g42
  (
    n80,
    n44,
    n11,
    n5,
    n25
  );


  nor
  g43
  (
    n67,
    n45,
    n40,
    n19,
    n42
  );


  and
  g44
  (
    n62,
    n25,
    n12,
    n38,
    n22
  );


  xor
  g45
  (
    n87,
    n32,
    n42,
    n8,
    n35
  );


  nor
  g46
  (
    n83,
    n40,
    n14,
    n15,
    n7
  );


  and
  g47
  (
    n66,
    n23,
    n15,
    n37,
    n32
  );


  and
  g48
  (
    n90,
    n28,
    n5,
    n25,
    n41
  );


  nand
  g49
  (
    n68,
    n16,
    n23,
    n31,
    n34
  );


  and
  g50
  (
    n50,
    n16,
    n45,
    n6,
    n10
  );


  or
  g51
  (
    n59,
    n39,
    n9,
    n25,
    n7
  );


  nor
  g52
  (
    n60,
    n36,
    n40,
    n35,
    n38
  );


  xor
  g53
  (
    n54,
    n14,
    n28,
    n36
  );


  nor
  g54
  (
    n58,
    n21,
    n40,
    n27,
    n43
  );


  nand
  g55
  (
    n69,
    n41,
    n8,
    n28
  );


  nand
  g56
  (
    n70,
    n18,
    n27,
    n11
  );


  xnor
  g57
  (
    n65,
    n12,
    n13,
    n24
  );


  nand
  g58
  (
    n85,
    n39,
    n4,
    n10,
    n6
  );


  and
  g59
  (
    n74,
    n20,
    n45,
    n19,
    n32
  );


  buf
  g60
  (
    n97,
    n51
  );


  not
  g61
  (
    n100,
    n47
  );


  not
  g62
  (
    n95,
    n48
  );


  not
  g63
  (
    n99,
    n50
  );


  xor
  g64
  (
    n96,
    n47,
    n58,
    n46
  );


  nand
  g65
  (
    n93,
    n47,
    n49,
    n57,
    n53
  );


  xnor
  g66
  (
    n94,
    n56,
    n46,
    n52
  );


  nor
  g67
  (
    n98,
    n47,
    n59,
    n54,
    n55
  );


  or
  g68
  (
    n102,
    n90,
    n75,
    n87,
    n83
  );


  xor
  g69
  (
    n104,
    n96,
    n90,
    n79,
    n89
  );


  xnor
  g70
  (
    n106,
    n67,
    n72,
    n60,
    n90
  );


  nand
  g71
  (
    n130,
    n81,
    n61,
    n84,
    n93
  );


  nor
  g72
  (
    AntiSAT_key_wire,
    n85,
    n73,
    n77,
    n93
  );


  xnor
  g73
  (
    n122,
    n97,
    n80,
    n83,
    n89
  );


  xor
  g74
  (
    n109,
    n85,
    n95,
    n99,
    n90
  );


  xor
  g75
  (
    n118,
    n99,
    n89,
    n77,
    n68
  );


  or
  g76
  (
    n117,
    n75,
    n74,
    n78,
    n92
  );


  xnor
  g77
  (
    n125,
    n81,
    n76,
    n72,
    n85
  );


  nor
  g78
  (
    n123,
    n85,
    n77,
    n82,
    n92
  );


  nor
  g79
  (
    n114,
    n89,
    n76,
    n70,
    n64
  );


  nand
  g80
  (
    n128,
    n100,
    n74,
    n96,
    n95
  );


  xnor
  g81
  (
    n129,
    n83,
    n75,
    n93,
    n73
  );


  xnor
  g82
  (
    n107,
    n96,
    n88,
    n95,
    n79
  );


  xnor
  g83
  (
    n127,
    n80,
    n65,
    n81,
    n73
  );


  xor
  g84
  (
    n112,
    n86,
    n87,
    n91,
    n97
  );


  or
  g85
  (
    n111,
    n100,
    n82,
    n66,
    n72
  );


  nor
  g86
  (
    n126,
    n100,
    n96,
    n93,
    n92
  );


  xnor
  g87
  (
    n116,
    n94,
    n95,
    n62,
    n86
  );


  or
  g88
  (
    n131,
    n79,
    n78,
    n98,
    n81
  );


  nand
  g89
  (
    n101,
    n84,
    n94,
    n72,
    n88
  );


  xor
  g90
  (
    n105,
    n91,
    n77,
    n97,
    n71
  );


  xnor
  g91
  (
    n110,
    n98,
    n86,
    n99,
    n97
  );


  xor
  g92
  (
    n124,
    n91,
    n82,
    n74,
    n76
  );


  or
  g93
  (
    n132,
    n94,
    n94,
    n87,
    n76
  );


  xnor
  g94
  (
    n115,
    n86,
    n88,
    n78,
    n82
  );


  nand
  g95
  (
    n108,
    n63,
    n73,
    n99,
    n80
  );


  and
  g96
  (
    n103,
    n74,
    n79,
    n84,
    n91
  );


  nand
  g97
  (
    n119,
    n92,
    n88,
    n80,
    n98
  );


  and
  g98
  (
    n121,
    n87,
    n75,
    n100,
    n69
  );


  or
  g99
  (
    n120,
    n83,
    n84,
    n98,
    n78
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
    n113,
    AntiSAT_output,
    AntiSAT_key_wire
  );


endmodule

