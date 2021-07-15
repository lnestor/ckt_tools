

module Stat_100_48
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
  n125,
  n122,
  n115,
  n131,
  n116,
  n111,
  n106,
  n130,
  n105,
  n119,
  n128,
  n102,
  n123,
  n120,
  n129,
  n107,
  n124,
  n127,
  n117,
  n104,
  n114,
  n101,
  n113,
  n110,
  n112,
  n103,
  n121,
  n132,
  n109,
  n126,
  n108,
  n118,
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
  output n125;output n122;output n115;output n131;output n116;output n111;output n106;output n130;output n105;output n119;output n128;output n102;output n123;output n120;output n129;output n107;output n124;output n127;output n117;output n104;output n114;output n101;output n113;output n110;output n112;output n103;output n121;output n132;output n109;output n126;output n108;output n118;
  wire n33;wire n34;wire n35;wire n36;wire n37;wire n38;wire n39;wire n40;wire n41;wire n42;wire n43;wire n44;wire n45;wire n46;wire n47;wire n48;wire n49;wire n50;wire n51;wire n52;wire n53;wire n54;wire n55;wire n56;wire n57;wire n58;wire n59;wire n60;wire n61;wire n62;wire n63;wire n64;wire n65;wire n66;wire n67;wire n68;wire n69;wire n70;wire n71;wire n72;wire n73;wire n74;wire n75;wire n76;wire n77;wire n78;wire n79;wire n80;wire n81;wire n82;wire n83;wire n84;wire n85;wire n86;wire n87;wire n88;wire n89;wire n90;wire n91;wire n92;wire n93;wire n94;wire n95;wire n96;wire n97;wire n98;wire n99;wire n100;wire g_input_0_0;wire gbar_input_0_0;wire g_input_0_1;wire gbar_input_0_1;wire g_input_0_2;wire gbar_input_0_2;wire g_input_0_3;wire gbar_input_0_3;wire g_input_0_4;wire gbar_input_0_4;wire g_input_0_5;wire gbar_input_0_5;wire g_input_0_6;wire gbar_input_0_6;wire g_input_0_7;wire gbar_input_0_7;wire g_input_0_8;wire gbar_input_0_8;wire g_input_0_9;wire gbar_input_0_9;wire g_input_0_10;wire gbar_input_0_10;wire g_input_0_11;wire gbar_input_0_11;wire g_input_0_12;wire gbar_input_0_12;wire g_input_0_13;wire gbar_input_0_13;wire g_input_0_14;wire gbar_input_0_14;wire g_input_0_15;wire gbar_input_0_15;wire g_input_0_16;wire gbar_input_0_16;wire g_input_0_17;wire gbar_input_0_17;wire g_input_0_18;wire gbar_input_0_18;wire g_input_0_19;wire gbar_input_0_19;wire g_input_0_20;wire gbar_input_0_20;wire g_input_0_21;wire gbar_input_0_21;wire g_input_0_22;wire gbar_input_0_22;wire g_input_0_23;wire gbar_input_0_23;wire g_input_0_24;wire gbar_input_0_24;wire g_input_0_25;wire gbar_input_0_25;wire g_input_0_26;wire gbar_input_0_26;wire g_input_0_27;wire gbar_input_0_27;wire g_input_0_28;wire gbar_input_0_28;wire g_input_0_29;wire gbar_input_0_29;wire g_input_0_30;wire gbar_input_0_30;wire g_input_0_31;wire gbar_input_0_31;wire f_g_wire;wire f_gbar_wire;wire AntiSAT_output;

  not
  g0
  (
    n34,
    n4
  );


  buf
  g1
  (
    n40,
    n2
  );


  not
  g2
  (
    n41,
    n4
  );


  not
  g3
  (
    n39,
    n3
  );


  not
  g4
  (
    n33,
    n1
  );


  not
  g5
  (
    n36,
    n3
  );


  not
  g6
  (
    n37,
    n1
  );


  not
  g7
  (
    n42,
    n2
  );


  buf
  g8
  (
    n35,
    n1
  );


  xnor
  g9
  (
    n38,
    n2,
    n3
  );


  buf
  g10
  (
    n50,
    n37
  );


  buf
  g11
  (
    n53,
    n40
  );


  buf
  g12
  (
    n46,
    n34
  );


  buf
  g13
  (
    n45,
    n37
  );


  buf
  g14
  (
    n47,
    n34
  );


  not
  g15
  (
    n55,
    n40
  );


  not
  g16
  (
    n48,
    n37
  );


  buf
  g17
  (
    n51,
    n36
  );


  not
  g18
  (
    n58,
    n38
  );


  or
  g19
  (
    n56,
    n40,
    n42,
    n36,
    n33
  );


  xor
  g20
  (
    n44,
    n38,
    n38,
    n33,
    n42
  );


  nand
  g21
  (
    n43,
    n36,
    n39,
    n35
  );


  nand
  g22
  (
    n52,
    n40,
    n39,
    n37,
    n38
  );


  and
  g23
  (
    n49,
    n34,
    n42,
    n36,
    n41
  );


  or
  g24
  (
    n57,
    n41,
    n33,
    n35,
    n39
  );


  nand
  g25
  (
    n54,
    n39,
    n42,
    n41
  );


  nor
  g26
  (
    n62,
    n15,
    n13,
    n45
  );


  nor
  g27
  (
    n89,
    n10,
    n49,
    n7
  );


  or
  g28
  (
    n85,
    n5,
    n24,
    n22
  );


  xor
  g29
  (
    n94,
    n53,
    n49,
    n28
  );


  xnor
  g30
  (
    n79,
    n12,
    n45,
    n10
  );


  or
  g31
  (
    n60,
    n54,
    n25,
    n45
  );


  and
  g32
  (
    n73,
    n30,
    n21,
    n12
  );


  xnor
  g33
  (
    n71,
    n14,
    n58,
    n26
  );


  nor
  g34
  (
    n88,
    n31,
    n22,
    n13
  );


  nand
  g35
  (
    n93,
    n26,
    n47
  );


  and
  g36
  (
    n67,
    n15,
    n43,
    n46
  );


  and
  g37
  (
    n70,
    n21,
    n9,
    n48
  );


  or
  g38
  (
    n84,
    n58,
    n28,
    n43
  );


  xnor
  g39
  (
    n69,
    n23,
    n19,
    n57
  );


  or
  g40
  (
    n80,
    n8,
    n27,
    n9
  );


  nand
  g41
  (
    n61,
    n52,
    n17,
    n53
  );


  and
  g42
  (
    n83,
    n11,
    n16
  );


  nand
  g43
  (
    n66,
    n48,
    n18,
    n51
  );


  xnor
  g44
  (
    n77,
    n26,
    n31,
    n22
  );


  nor
  g45
  (
    n81,
    n31,
    n27,
    n44
  );


  or
  g46
  (
    n63,
    n46,
    n25,
    n7
  );


  or
  g47
  (
    n82,
    n30,
    n25,
    n58
  );


  xnor
  g48
  (
    n87,
    n52,
    n6,
    n55
  );


  or
  g49
  (
    n59,
    n29,
    n23,
    n20,
    n56
  );


  and
  g50
  (
    n96,
    n11,
    n56,
    n57,
    n23
  );


  or
  g51
  (
    n74,
    n18,
    n56,
    n11,
    n16
  );


  xnor
  g52
  (
    n97,
    n20,
    n27,
    n14,
    n22
  );


  nand
  g53
  (
    n78,
    n50,
    n14,
    n6,
    n52
  );


  nand
  g54
  (
    n98,
    n23,
    n58,
    n18,
    n43
  );


  nand
  g55
  (
    n99,
    n26,
    n47,
    n20,
    n51
  );


  xor
  g56
  (
    n64,
    n8,
    n21,
    n5,
    n55
  );


  xor
  g57
  (
    n100,
    n17,
    n30,
    n13,
    n25
  );


  and
  g58
  (
    n95,
    n15,
    n44,
    n32,
    n50
  );


  xnor
  g59
  (
    n72,
    n28,
    n32,
    n10,
    n50
  );


  xnor
  g60
  (
    n68,
    n29,
    n17,
    n57,
    n30
  );


  nor
  g61
  (
    n92,
    n31,
    n55,
    n46,
    n6
  );


  or
  g62
  (
    n75,
    n24,
    n48,
    n7,
    n8
  );


  nor
  g63
  (
    n91,
    n49,
    n19,
    n54,
    n9
  );


  nor
  g64
  (
    n90,
    n29,
    n4,
    n20,
    n24
  );


  xnor
  g65
  (
    n76,
    n51,
    n44,
    n12,
    n54
  );


  or
  g66
  (
    n65,
    n24,
    n27,
    n19,
    n29
  );


  xnor
  g67
  (
    n86,
    n28,
    n21,
    n53,
    n5
  );


  nor
  g68
  (
    n109,
    n81,
    n69,
    n91
  );


  xnor
  g69
  (
    n115,
    n88,
    n66,
    n67,
    n71
  );


  nor
  g70
  (
    n131,
    n62,
    n84,
    n86,
    n74
  );


  xor
  g71
  (
    n126,
    n100,
    n93,
    n83,
    n97
  );


  xnor
  g72
  (
    n112,
    n70,
    n70,
    n90,
    n92
  );


  or
  g73
  (
    n118,
    n92,
    n97,
    n59,
    n77
  );


  xnor
  g74
  (
    n119,
    n73,
    n81,
    n68,
    n79
  );


  or
  g75
  (
    n113,
    n98,
    n65,
    n76,
    n80
  );


  nor
  g76
  (
    n101,
    n72,
    n85,
    n64,
    n95
  );


  xnor
  g77
  (
    n122,
    n91,
    n82,
    n90,
    n61
  );


  nor
  g78
  (
    n111,
    n62,
    n94,
    n86,
    n71
  );


  or
  g79
  (
    n125,
    n84,
    n99,
    n94,
    n63
  );


  nor
  g80
  (
    n102,
    n79,
    n74,
    n75,
    n78
  );


  xor
  g81
  (
    n107,
    n85,
    n93,
    n78,
    n61
  );


  nor
  g82
  (
    n106,
    n69,
    n82,
    n70,
    n65
  );


  nand
  g83
  (
    n132,
    n60,
    n83,
    n32,
    n87
  );


  xor
  g84
  (
    n130,
    n67,
    n81,
    n99,
    n89
  );


  nor
  g85
  (
    n123,
    n95,
    n92,
    n88,
    n100
  );


  xnor
  g86
  (
    n105,
    n96,
    n94,
    n60,
    n83
  );


  xnor
  g87
  (
    n104,
    n68,
    n80,
    n64
  );


  xor
  g88
  (
    n128,
    n93,
    n66,
    n61,
    n100
  );


  nor
  g89
  (
    n129,
    n99,
    n63,
    n59
  );


  xnor
  g90
  (
    n114,
    n84,
    n90,
    n62,
    n69
  );


  xor
  g91
  (
    n121,
    n77,
    n75,
    n73,
    n96
  );


  xnor
  g92
  (
    n124,
    n98,
    n71,
    n87,
    n64
  );


  xnor
  g93
  (
    n108,
    n87,
    n72,
    n78,
    n75
  );


  xnor
  g94
  (
    AntiSAT_key_wire,
    n85,
    n74,
    n76,
    n79
  );


  nor
  g95
  (
    n116,
    n68,
    n96,
    n76,
    n97
  );


  xor
  g96
  (
    n120,
    n66,
    n88,
    n89,
    n65
  );


  nand
  g97
  (
    n103,
    n60,
    n73,
    n86,
    n98
  );


  or
  g98
  (
    n110,
    n32,
    n72,
    n67,
    n89
  );


  and
  g99
  (
    n127,
    n59,
    n77,
    n82,
    n95
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
    n117,
    AntiSAT_output,
    AntiSAT_key_wire
  );


endmodule

