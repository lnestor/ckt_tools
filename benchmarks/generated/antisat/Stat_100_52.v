

module Stat_100_52
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
  n62,
  n48,
  n126,
  n122,
  n129,
  n104,
  n113,
  n117,
  n123,
  n115,
  n110,
  n111,
  n116,
  n105,
  n112,
  n132,
  n118,
  n120,
  n125,
  n103,
  n128,
  n109,
  n127,
  n121,
  n107,
  n130,
  n106,
  n124,
  n114,
  n119,
  n131,
  n108,
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
  output n62;output n48;output n126;output n122;output n129;output n104;output n113;output n117;output n123;output n115;output n110;output n111;output n116;output n105;output n112;output n132;output n118;output n120;output n125;output n103;output n128;output n109;output n127;output n121;output n107;output n130;output n106;output n124;output n114;output n119;output n131;output n108;
  wire n33;wire n34;wire n35;wire n36;wire n37;wire n38;wire n39;wire n40;wire n41;wire n42;wire n43;wire n44;wire n45;wire n46;wire n47;wire n49;wire n50;wire n51;wire n52;wire n53;wire n54;wire n55;wire n56;wire n57;wire n58;wire n59;wire n60;wire n61;wire n63;wire n64;wire n65;wire n66;wire n67;wire n68;wire n69;wire n70;wire n71;wire n72;wire n73;wire n74;wire n75;wire n76;wire n77;wire n78;wire n79;wire n80;wire n81;wire n82;wire n83;wire n84;wire n85;wire n86;wire n87;wire n88;wire n89;wire n90;wire n91;wire n92;wire n93;wire n94;wire n95;wire n96;wire n97;wire n98;wire n99;wire n100;wire n101;wire n102;wire g_input_0_0;wire gbar_input_0_0;wire g_input_0_1;wire gbar_input_0_1;wire g_input_0_2;wire gbar_input_0_2;wire g_input_0_3;wire gbar_input_0_3;wire g_input_0_4;wire gbar_input_0_4;wire g_input_0_5;wire gbar_input_0_5;wire g_input_0_6;wire gbar_input_0_6;wire g_input_0_7;wire gbar_input_0_7;wire g_input_0_8;wire gbar_input_0_8;wire g_input_0_9;wire gbar_input_0_9;wire g_input_0_10;wire gbar_input_0_10;wire g_input_0_11;wire gbar_input_0_11;wire g_input_0_12;wire gbar_input_0_12;wire g_input_0_13;wire gbar_input_0_13;wire g_input_0_14;wire gbar_input_0_14;wire g_input_0_15;wire gbar_input_0_15;wire g_input_0_16;wire gbar_input_0_16;wire g_input_0_17;wire gbar_input_0_17;wire g_input_0_18;wire gbar_input_0_18;wire g_input_0_19;wire gbar_input_0_19;wire g_input_0_20;wire gbar_input_0_20;wire g_input_0_21;wire gbar_input_0_21;wire g_input_0_22;wire gbar_input_0_22;wire g_input_0_23;wire gbar_input_0_23;wire g_input_0_24;wire gbar_input_0_24;wire g_input_0_25;wire gbar_input_0_25;wire g_input_0_26;wire gbar_input_0_26;wire g_input_0_27;wire gbar_input_0_27;wire g_input_0_28;wire gbar_input_0_28;wire g_input_0_29;wire gbar_input_0_29;wire g_input_0_30;wire gbar_input_0_30;wire g_input_0_31;wire gbar_input_0_31;wire f_g_wire;wire f_gbar_wire;wire AntiSAT_output;

  buf
  g0
  (
    n41,
    n2
  );


  buf
  g1
  (
    n37,
    n2
  );


  not
  g2
  (
    n38,
    n3
  );


  not
  g3
  (
    n35,
    n1
  );


  buf
  g4
  (
    n39,
    n2
  );


  not
  g5
  (
    n34,
    n1
  );


  not
  g6
  (
    n36,
    n1
  );


  buf
  g7
  (
    n40,
    n2
  );


  not
  g8
  (
    n42,
    n1
  );


  buf
  g9
  (
    n33,
    n3
  );


  xnor
  g10
  (
    n56,
    n32,
    n10
  );


  and
  g11
  (
    n63,
    n36,
    n39,
    n14,
    n25
  );


  and
  g12
  (
    n46,
    n17,
    n7,
    n32,
    n28
  );


  xor
  g13
  (
    n62,
    n30,
    n14,
    n13,
    n4
  );


  xor
  g14
  (
    n44,
    n18,
    n8,
    n31,
    n42
  );


  xnor
  g15
  (
    n66,
    n22,
    n26,
    n23,
    n20
  );


  nor
  g16
  (
    n73,
    n5,
    n33,
    n16,
    n22
  );


  xnor
  g17
  (
    n76,
    n10,
    n31,
    n11,
    n12
  );


  xnor
  g18
  (
    n81,
    n11,
    n25,
    n32,
    n35
  );


  or
  g19
  (
    n57,
    n6,
    n15,
    n29,
    n10
  );


  and
  g20
  (
    n52,
    n11,
    n28,
    n36,
    n15
  );


  nand
  g21
  (
    n61,
    n4,
    n19,
    n21
  );


  nor
  g22
  (
    n67,
    n31,
    n11,
    n23,
    n42
  );


  or
  g23
  (
    n71,
    n38,
    n35,
    n3,
    n25
  );


  and
  g24
  (
    n43,
    n23,
    n24,
    n15,
    n34
  );


  nand
  g25
  (
    n79,
    n30,
    n21,
    n28,
    n34
  );


  xor
  g26
  (
    n55,
    n39,
    n6,
    n22,
    n14
  );


  and
  g27
  (
    n72,
    n33,
    n26,
    n18,
    n6
  );


  or
  g28
  (
    n48,
    n30,
    n20,
    n23,
    n26
  );


  or
  g29
  (
    n68,
    n42,
    n12,
    n9,
    n20
  );


  nor
  g30
  (
    n82,
    n19,
    n36,
    n18,
    n8
  );


  xnor
  g31
  (
    n78,
    n17,
    n8,
    n18,
    n38
  );


  xnor
  g32
  (
    n74,
    n19,
    n13,
    n22,
    n5
  );


  nand
  g33
  (
    n45,
    n17,
    n40,
    n16
  );


  nand
  g34
  (
    n70,
    n28,
    n39,
    n13,
    n26
  );


  xor
  g35
  (
    n58,
    n7,
    n31,
    n6,
    n24
  );


  nand
  g36
  (
    n69,
    n20,
    n33,
    n3,
    n27
  );


  or
  g37
  (
    n75,
    n19,
    n5,
    n41,
    n24
  );


  and
  g38
  (
    n60,
    n37,
    n39,
    n4,
    n41
  );


  and
  g39
  (
    n53,
    n16,
    n7,
    n42,
    n35
  );


  nor
  g40
  (
    n51,
    n9,
    n37,
    n32,
    n34
  );


  or
  g41
  (
    n65,
    n37,
    n9,
    n29,
    n35
  );


  and
  g42
  (
    n47,
    n24,
    n4,
    n17,
    n12
  );


  nand
  g43
  (
    n80,
    n8,
    n33,
    n15,
    n16
  );


  xor
  g44
  (
    n50,
    n29,
    n27,
    n38
  );


  xnor
  g45
  (
    n54,
    n36,
    n9,
    n5,
    n25
  );


  nand
  g46
  (
    n49,
    n14,
    n37,
    n40,
    n10
  );


  xnor
  g47
  (
    n77,
    n27,
    n40,
    n30,
    n34
  );


  nand
  g48
  (
    n59,
    n38,
    n29,
    n13,
    n21
  );


  xnor
  g49
  (
    n64,
    n12,
    n7,
    n41
  );


  buf
  g50
  (
    n85,
    n45
  );


  buf
  g51
  (
    n86,
    n46
  );


  not
  g52
  (
    n83,
    n47
  );


  buf
  g53
  (
    n84,
    n48
  );


  nor
  g54
  (
    n92,
    n58,
    n56,
    n50,
    n53
  );


  and
  g55
  (
    n96,
    n50,
    n60,
    n52
  );


  or
  g56
  (
    n90,
    n84,
    n58,
    n51,
    n83
  );


  and
  g57
  (
    n100,
    n50,
    n53,
    n55,
    n52
  );


  or
  g58
  (
    n99,
    n85,
    n59,
    n55
  );


  xor
  g59
  (
    n88,
    n58,
    n86,
    n52,
    n56
  );


  xnor
  g60
  (
    n95,
    n59,
    n51,
    n60,
    n54
  );


  xnor
  g61
  (
    n93,
    n53,
    n54,
    n55,
    n57
  );


  and
  g62
  (
    n102,
    n86,
    n52,
    n83,
    n59
  );


  xnor
  g63
  (
    n98,
    n84,
    n85,
    n56,
    n57
  );


  xor
  g64
  (
    n97,
    n54,
    n84,
    n51
  );


  xor
  g65
  (
    n89,
    n83,
    n53,
    n58,
    n54
  );


  nand
  g66
  (
    n94,
    n86,
    n85,
    n49
  );


  xor
  g67
  (
    n87,
    n59,
    n57,
    n49,
    n60
  );


  xor
  g68
  (
    n101,
    n50,
    n51,
    n56,
    n49
  );


  and
  g69
  (
    n91,
    n86,
    n85,
    n57,
    n83
  );


  nand
  g70
  (
    AntiSAT_key_wire,
    n81,
    n63,
    n66,
    n96
  );


  nand
  g71
  (
    n115,
    n81,
    n101,
    n66,
    n69
  );


  nor
  g72
  (
    n110,
    n62,
    n100,
    n71,
    n69
  );


  xnor
  g73
  (
    n103,
    n68,
    n100,
    n74,
    n99
  );


  nand
  g74
  (
    n119,
    n98,
    n99,
    n82,
    n101
  );


  nand
  g75
  (
    n132,
    n72,
    n61,
    n102,
    n78
  );


  and
  g76
  (
    n118,
    n68,
    n100,
    n82,
    n64
  );


  nor
  g77
  (
    n107,
    n74,
    n67,
    n75,
    n98
  );


  or
  g78
  (
    n117,
    n71,
    n65,
    n99,
    n80
  );


  or
  g79
  (
    n120,
    n74,
    n75,
    n91,
    n87
  );


  xor
  g80
  (
    n123,
    n95,
    n68,
    n63,
    n73
  );


  nand
  g81
  (
    n109,
    n94,
    n77,
    n89,
    n102
  );


  xnor
  g82
  (
    n112,
    n69,
    n71,
    n79,
    n65
  );


  xnor
  g83
  (
    n104,
    n93,
    n100,
    n102,
    n61
  );


  nor
  g84
  (
    n113,
    n80,
    n76,
    n98,
    n90
  );


  xnor
  g85
  (
    n131,
    n68,
    n76,
    n65
  );


  xnor
  g86
  (
    n125,
    n72,
    n66,
    n98,
    n77
  );


  nand
  g87
  (
    n111,
    n80,
    n82,
    n73,
    n71
  );


  xor
  g88
  (
    n128,
    n74,
    n79,
    n70,
    n88
  );


  xnor
  g89
  (
    n106,
    n72,
    n73,
    n75,
    n76
  );


  xnor
  g90
  (
    n124,
    n78,
    n70,
    n101,
    n72
  );


  xnor
  g91
  (
    n130,
    n92,
    n64,
    n67
  );


  xnor
  g92
  (
    n105,
    n67,
    n63,
    n79,
    n65
  );


  xor
  g93
  (
    n114,
    n62,
    n78,
    n99,
    n70
  );


  xnor
  g94
  (
    n122,
    n82,
    n63,
    n62,
    n73
  );


  and
  g95
  (
    n121,
    n97,
    n62,
    n77,
    n81
  );


  xnor
  g96
  (
    n127,
    n79,
    n102,
    n66,
    n80
  );


  xnor
  g97
  (
    n116,
    n101,
    n81,
    n97,
    n61
  );


  xor
  g98
  (
    n129,
    n70,
    n67,
    n64,
    n61
  );


  nand
  g99
  (
    n108,
    n77,
    n78,
    n69,
    n75
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
    n126,
    AntiSAT_output,
    AntiSAT_key_wire
  );


endmodule

