

module Stat_100_56
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
  nCHANGED,
  n105,
  n120,
  n101,
  n102,
  n104,
  n117,
  n122,
  n116,
  n123,
  n108,
  n99,
  n97,
  n121,
  n115,
  n95,
  n93,
  n107,
  n118,
  n98,
  n113,
  n106,
  n96,
  n109,
  n112,
  n114,
  n100,
  n128,
  n129,
  n130,
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
  output nCHANGED;output n105;output n120;output n101;output n102;output n104;output n117;output n122;output n116;output n123;output n108;output n99;output n97;output n121;output n115;output n95;output n93;output n107;output n118;output n98;output n113;output n106;output n96;output n109;output n112;output n114;output n100;output n128;output n129;output n130;output n132;output n131;
  wire n33;wire n34;wire n35;wire n36;wire n37;wire n38;wire n39;wire n40;wire n41;wire n42;wire n43;wire n44;wire n45;wire n46;wire n47;wire n48;wire n49;wire n50;wire n51;wire n52;wire n53;wire n54;wire n55;wire n56;wire n57;wire n58;wire n59;wire n60;wire n61;wire n62;wire n63;wire n64;wire n65;wire n66;wire n67;wire n68;wire n69;wire n70;wire n71;wire n72;wire n73;wire n74;wire n75;wire n76;wire n77;wire n78;wire n79;wire n80;wire n81;wire n82;wire n83;wire n84;wire n85;wire n86;wire n87;wire n88;wire n89;wire n90;wire n91;wire n92;wire n94;wire n103;wire n110;wire n111;wire n119;wire n124;wire n125;wire n126;wire n127;wire g_input_0_0;wire gbar_input_0_0;wire g_input_0_1;wire gbar_input_0_1;wire g_input_0_2;wire gbar_input_0_2;wire g_input_0_3;wire gbar_input_0_3;wire g_input_0_4;wire gbar_input_0_4;wire g_input_0_5;wire gbar_input_0_5;wire g_input_0_6;wire gbar_input_0_6;wire g_input_0_7;wire gbar_input_0_7;wire g_input_0_8;wire gbar_input_0_8;wire g_input_0_9;wire gbar_input_0_9;wire g_input_0_10;wire gbar_input_0_10;wire g_input_0_11;wire gbar_input_0_11;wire g_input_0_12;wire gbar_input_0_12;wire g_input_0_13;wire gbar_input_0_13;wire g_input_0_14;wire gbar_input_0_14;wire g_input_0_15;wire gbar_input_0_15;wire g_input_0_16;wire gbar_input_0_16;wire g_input_0_17;wire gbar_input_0_17;wire g_input_0_18;wire gbar_input_0_18;wire g_input_0_19;wire gbar_input_0_19;wire g_input_0_20;wire gbar_input_0_20;wire g_input_0_21;wire gbar_input_0_21;wire g_input_0_22;wire gbar_input_0_22;wire g_input_0_23;wire gbar_input_0_23;wire g_input_0_24;wire gbar_input_0_24;wire g_input_0_25;wire gbar_input_0_25;wire g_input_0_26;wire gbar_input_0_26;wire g_input_0_27;wire gbar_input_0_27;wire g_input_0_28;wire gbar_input_0_28;wire g_input_0_29;wire gbar_input_0_29;wire g_input_0_30;wire gbar_input_0_30;wire g_input_0_31;wire gbar_input_0_31;wire f_g_wire;wire f_gbar_wire;wire AntiSAT_output;

  not
  g0
  (
    n52,
    n20
  );


  not
  g1
  (
    n76,
    n28
  );


  not
  g2
  (
    n36,
    n19
  );


  not
  g3
  (
    n60,
    n19
  );


  not
  g4
  (
    n64,
    n12
  );


  not
  g5
  (
    n42,
    n18
  );


  buf
  g6
  (
    n44,
    n25
  );


  not
  g7
  (
    n71,
    n28
  );


  not
  g8
  (
    n68,
    n25
  );


  not
  g9
  (
    n34,
    n17
  );


  buf
  g10
  (
    n47,
    n6
  );


  buf
  g11
  (
    n35,
    n22
  );


  not
  g12
  (
    n54,
    n23
  );


  not
  g13
  (
    n81,
    n22
  );


  not
  g14
  (
    n69,
    n16
  );


  not
  g15
  (
    n58,
    n20
  );


  not
  g16
  (
    n80,
    n23
  );


  buf
  g17
  (
    n51,
    n3
  );


  buf
  g18
  (
    n59,
    n25
  );


  not
  g19
  (
    n33,
    n27
  );


  buf
  g20
  (
    n46,
    n7
  );


  buf
  g21
  (
    n67,
    n2
  );


  not
  g22
  (
    n63,
    n26
  );


  buf
  g23
  (
    n56,
    n24
  );


  not
  g24
  (
    n78,
    n13
  );


  not
  g25
  (
    n40,
    n15
  );


  buf
  g26
  (
    n66,
    n11
  );


  buf
  g27
  (
    n70,
    n22
  );


  buf
  g28
  (
    n48,
    n24
  );


  not
  g29
  (
    n37,
    n26
  );


  buf
  g30
  (
    n72,
    n27
  );


  buf
  g31
  (
    n65,
    n24
  );


  buf
  g32
  (
    n57,
    n18
  );


  buf
  g33
  (
    n41,
    n21
  );


  buf
  g34
  (
    n82,
    n21
  );


  buf
  g35
  (
    n61,
    n4
  );


  buf
  g36
  (
    n49,
    n9
  );


  not
  g37
  (
    n83,
    n20
  );


  buf
  g38
  (
    n74,
    n27
  );


  buf
  g39
  (
    n75,
    n21
  );


  not
  g40
  (
    n38,
    n19
  );


  buf
  g41
  (
    n43,
    n14
  );


  buf
  g42
  (
    n84,
    n29
  );


  buf
  g43
  (
    n77,
    n10
  );


  buf
  g44
  (
    n79,
    n29
  );


  buf
  g45
  (
    n62,
    n28
  );


  not
  g46
  (
    n53,
    n23
  );


  not
  g47
  (
    n73,
    n1
  );


  not
  g48
  (
    n45,
    n5
  );


  buf
  g49
  (
    n39,
    n8
  );


  not
  g50
  (
    n55,
    n26
  );


  not
  g51
  (
    n50,
    n18
  );


  buf
  g52
  (
    n85,
    n35
  );


  buf
  g53
  (
    n88,
    n34
  );


  not
  g54
  (
    n86,
    n36
  );


  buf
  g55
  (
    n87,
    n37
  );


  not
  g56
  (
    n90,
    n33
  );


  buf
  g57
  (
    n89,
    n38
  );


  not
  g58
  (
    n92,
    n39
  );


  buf
  g59
  (
    n91,
    n40
  );


  xor
  g60
  (
    n121,
    n68,
    n82,
    n74,
    n85
  );


  nor
  g61
  (
    n104,
    n57,
    n84,
    n75,
    n59
  );


  nor
  g62
  (
    n117,
    n75,
    n88,
    n83,
    n42
  );


  and
  g63
  (
    n99,
    n86,
    n56,
    n46,
    n71
  );


  xor
  g64
  (
    n98,
    n63,
    n86,
    n91,
    n62
  );


  nor
  g65
  (
    n107,
    n73,
    n79,
    n67
  );


  xnor
  g66
  (
    n110,
    n82,
    n83,
    n89,
    n81
  );


  nand
  g67
  (
    n111,
    n90,
    n85,
    n92,
    n78
  );


  nand
  g68
  (
    n113,
    n67,
    n70,
    n87,
    n78
  );


  xnor
  g69
  (
    n108,
    n74,
    n84,
    n77,
    n91
  );


  or
  g70
  (
    n122,
    n76,
    n61,
    n73,
    n79
  );


  xor
  g71
  (
    n112,
    n53,
    n92,
    n65,
    n89
  );


  nand
  g72
  (
    n105,
    n80,
    n72,
    n63
  );


  nand
  g73
  (
    n123,
    n77,
    n69
  );


  nand
  g74
  (
    n109,
    n75,
    n91,
    n86,
    n48
  );


  and
  g75
  (
    n116,
    n89,
    n71,
    n77,
    n52
  );


  and
  g76
  (
    n124,
    n91,
    n85,
    n54,
    n60
  );


  nand
  g77
  (
    n94,
    n62,
    n61,
    n87
  );


  xnor
  g78
  (
    n101,
    n71,
    n59,
    n50,
    n58
  );


  nor
  g79
  (
    n96,
    n72,
    n79,
    n51,
    n88
  );


  nor
  g80
  (
    n103,
    n65,
    n70,
    n76,
    n49
  );


  xnor
  g81
  (
    n97,
    n84,
    n90,
    n62,
    n80
  );


  or
  g82
  (
    n118,
    n45,
    n66,
    n64,
    n90
  );


  nor
  g83
  (
    n95,
    n66,
    n41,
    n47,
    n78
  );


  nor
  g84
  (
    n102,
    n60,
    n43,
    n87,
    n89
  );


  and
  g85
  (
    n100,
    n90,
    n61,
    n64,
    n83
  );


  or
  g86
  (
    n114,
    n68,
    n55,
    n81,
    n72
  );


  or
  g87
  (
    n119,
    n92,
    n73,
    n74,
    n85
  );


  xor
  g88
  (
    n115,
    n76,
    n82,
    n60,
    n59
  );


  or
  g89
  (
    AntiSAT_key_wire,
    n64,
    n70,
    n68,
    n80
  );


  xor
  g90
  (
    n106,
    n44,
    n92,
    n86,
    n88
  );


  xnor
  g91
  (
    n120,
    n81,
    n66,
    n65,
    n88
  );


  not
  g92
  (
    n127,
    n121
  );


  not
  g93
  (
    n126,
    n120
  );


  not
  g94
  (
    n125,
    n119
  );


  xnor
  g95
  (
    n128,
    n123,
    n122,
    n127,
    n30
  );


  and
  g96
  (
    n131,
    n126,
    n29,
    n31
  );


  nor
  g97
  (
    n130,
    n125,
    n126,
    n30
  );


  nand
  g98
  (
    n129,
    n124,
    n32
  );


  and
  g99
  (
    n132,
    n31,
    n127,
    n126
  );


  buf
  g100
  (
    nCHANGED,
    n10
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
    n93,
    AntiSAT_output,
    AntiSAT_key_wire
  );


endmodule

