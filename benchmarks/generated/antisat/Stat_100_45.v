

module Stat_100_45
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
  n101,
  n113,
  n83,
  n122,
  n93,
  n95,
  n86,
  n110,
  n84,
  n112,
  n99,
  n116,
  n121,
  n109,
  n114,
  n117,
  n120,
  n107,
  n106,
  n111,
  n118,
  n102,
  n128,
  n124,
  n127,
  n130,
  n131,
  n125,
  n132,
  n129,
  n126,
  n123,
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
  output n101;output n113;output n83;output n122;output n93;output n95;output n86;output n110;output n84;output n112;output n99;output n116;output n121;output n109;output n114;output n117;output n120;output n107;output n106;output n111;output n118;output n102;output n128;output n124;output n127;output n130;output n131;output n125;output n132;output n129;output n126;output n123;
  wire n33;wire n34;wire n35;wire n36;wire n37;wire n38;wire n39;wire n40;wire n41;wire n42;wire n43;wire n44;wire n45;wire n46;wire n47;wire n48;wire n49;wire n50;wire n51;wire n52;wire n53;wire n54;wire n55;wire n56;wire n57;wire n58;wire n59;wire n60;wire n61;wire n62;wire n63;wire n64;wire n65;wire n66;wire n67;wire n68;wire n69;wire n70;wire n71;wire n72;wire n73;wire n74;wire n75;wire n76;wire n77;wire n78;wire n79;wire n80;wire n81;wire n82;wire n85;wire n87;wire n88;wire n89;wire n90;wire n91;wire n92;wire n94;wire n96;wire n97;wire n98;wire n100;wire n103;wire n104;wire n105;wire n108;wire n115;wire n119;wire g_input_0_0;wire gbar_input_0_0;wire g_input_0_1;wire gbar_input_0_1;wire g_input_0_2;wire gbar_input_0_2;wire g_input_0_3;wire gbar_input_0_3;wire g_input_0_4;wire gbar_input_0_4;wire g_input_0_5;wire gbar_input_0_5;wire g_input_0_6;wire gbar_input_0_6;wire g_input_0_7;wire gbar_input_0_7;wire g_input_0_8;wire gbar_input_0_8;wire g_input_0_9;wire gbar_input_0_9;wire g_input_0_10;wire gbar_input_0_10;wire g_input_0_11;wire gbar_input_0_11;wire g_input_0_12;wire gbar_input_0_12;wire g_input_0_13;wire gbar_input_0_13;wire g_input_0_14;wire gbar_input_0_14;wire g_input_0_15;wire gbar_input_0_15;wire g_input_0_16;wire gbar_input_0_16;wire g_input_0_17;wire gbar_input_0_17;wire g_input_0_18;wire gbar_input_0_18;wire g_input_0_19;wire gbar_input_0_19;wire g_input_0_20;wire gbar_input_0_20;wire g_input_0_21;wire gbar_input_0_21;wire g_input_0_22;wire gbar_input_0_22;wire g_input_0_23;wire gbar_input_0_23;wire g_input_0_24;wire gbar_input_0_24;wire g_input_0_25;wire gbar_input_0_25;wire g_input_0_26;wire gbar_input_0_26;wire g_input_0_27;wire gbar_input_0_27;wire g_input_0_28;wire gbar_input_0_28;wire g_input_0_29;wire gbar_input_0_29;wire g_input_0_30;wire gbar_input_0_30;wire g_input_0_31;wire gbar_input_0_31;wire f_g_wire;wire f_gbar_wire;wire AntiSAT_output;

  not
  g0
  (
    n47,
    n2
  );


  buf
  g1
  (
    n62,
    n3
  );


  buf
  g2
  (
    n46,
    n16
  );


  not
  g3
  (
    n52,
    n11
  );


  buf
  g4
  (
    n42,
    n14
  );


  buf
  g5
  (
    n61,
    n25
  );


  buf
  g6
  (
    n37,
    n26
  );


  not
  g7
  (
    n35,
    n29
  );


  not
  g8
  (
    n56,
    n30
  );


  buf
  g9
  (
    n58,
    n24
  );


  buf
  g10
  (
    n64,
    n4
  );


  buf
  g11
  (
    n45,
    n21
  );


  buf
  g12
  (
    n33,
    n6
  );


  buf
  g13
  (
    n40,
    n7
  );


  buf
  g14
  (
    n38,
    n15
  );


  buf
  g15
  (
    n63,
    n32
  );


  not
  g16
  (
    n50,
    n23
  );


  buf
  g17
  (
    n57,
    n9
  );


  not
  g18
  (
    n65,
    n8
  );


  not
  g19
  (
    n49,
    n32
  );


  buf
  g20
  (
    n36,
    n17
  );


  not
  g21
  (
    n51,
    n18
  );


  not
  g22
  (
    n59,
    n20
  );


  not
  g23
  (
    n48,
    n10
  );


  buf
  g24
  (
    n66,
    n31
  );


  buf
  g25
  (
    n44,
    n27
  );


  not
  g26
  (
    n55,
    n1
  );


  buf
  g27
  (
    n43,
    n28
  );


  not
  g28
  (
    n41,
    n19
  );


  buf
  g29
  (
    n60,
    n22
  );


  buf
  g30
  (
    n34,
    n13
  );


  buf
  g31
  (
    n53,
    n12
  );


  buf
  g32
  (
    n54,
    n32
  );


  buf
  g33
  (
    n39,
    n5
  );


  not
  g34
  (
    n75,
    n33
  );


  buf
  g35
  (
    n73,
    n36
  );


  not
  g36
  (
    n68,
    n34
  );


  buf
  g37
  (
    n79,
    n33
  );


  buf
  g38
  (
    n80,
    n36
  );


  buf
  g39
  (
    n69,
    n36
  );


  not
  g40
  (
    n70,
    n36
  );


  not
  g41
  (
    n77,
    n35
  );


  buf
  g42
  (
    n67,
    n34
  );


  not
  g43
  (
    n82,
    n34
  );


  buf
  g44
  (
    n71,
    n35
  );


  not
  g45
  (
    n81,
    n33
  );


  buf
  g46
  (
    n72,
    n35
  );


  not
  g47
  (
    n76,
    n35
  );


  not
  g48
  (
    n78,
    n33
  );


  not
  g49
  (
    n74,
    n34
  );


  xor
  g50
  (
    n87,
    n77,
    n43,
    n51,
    n40
  );


  and
  g51
  (
    n120,
    n71,
    n39,
    n41,
    n72
  );


  or
  g52
  (
    n116,
    n53,
    n60,
    n57,
    n41
  );


  nand
  g53
  (
    n88,
    n54,
    n49,
    n79,
    n37
  );


  nor
  g54
  (
    n121,
    n67,
    n80,
    n79,
    n48
  );


  nand
  g55
  (
    n98,
    n38,
    n50,
    n75,
    n61
  );


  and
  g56
  (
    n100,
    n52,
    n45,
    n43,
    n73
  );


  xor
  g57
  (
    n97,
    n60,
    n39,
    n50
  );


  nor
  g58
  (
    n94,
    n65,
    n53,
    n66,
    n48
  );


  nand
  g59
  (
    n110,
    n79,
    n63,
    n66,
    n64
  );


  and
  g60
  (
    n111,
    n59,
    n49,
    n41,
    n42
  );


  nand
  g61
  (
    n104,
    n42,
    n63,
    n73,
    n46
  );


  and
  g62
  (
    n113,
    n48,
    n49,
    n59,
    n43
  );


  xnor
  g63
  (
    n114,
    n55,
    n79,
    n77,
    n66
  );


  xnor
  g64
  (
    n119,
    n40,
    n73,
    n52,
    n74
  );


  nor
  g65
  (
    n117,
    n45,
    n76,
    n44
  );


  nand
  g66
  (
    n84,
    n37,
    n72,
    n77,
    n46
  );


  nand
  g67
  (
    n118,
    n62,
    n55,
    n47,
    n42
  );


  nand
  g68
  (
    n112,
    n72,
    n44,
    n74,
    n45
  );


  nor
  g69
  (
    n106,
    n38,
    n40,
    n56
  );


  xnor
  g70
  (
    n90,
    n56,
    n75,
    n45,
    n78
  );


  or
  g71
  (
    n83,
    n69,
    n64,
    n57,
    n55
  );


  nand
  g72
  (
    n105,
    n51,
    n77,
    n62,
    n78
  );


  nand
  g73
  (
    n86,
    n38,
    n51,
    n61,
    n75
  );


  and
  g74
  (
    n108,
    n48,
    n54,
    n50
  );


  or
  g75
  (
    n99,
    n74,
    n76,
    n44,
    n46
  );


  nand
  g76
  (
    n93,
    n61,
    n57,
    n59,
    n80
  );


  xnor
  g77
  (
    n115,
    n52,
    n37,
    n65,
    n78
  );


  and
  g78
  (
    n92,
    n60,
    n65,
    n70,
    n63
  );


  xor
  g79
  (
    n102,
    n58,
    n39,
    n37,
    n44
  );


  xnor
  g80
  (
    n95,
    n46,
    n74,
    n62,
    n78
  );


  xnor
  g81
  (
    n101,
    n54,
    n54,
    n64,
    n76
  );


  and
  g82
  (
    n109,
    n56,
    n73,
    n62,
    n66
  );


  xor
  g83
  (
    n85,
    n49,
    n61,
    n51,
    n75
  );


  xnor
  g84
  (
    n107,
    n43,
    n65,
    n59,
    n52
  );


  and
  g85
  (
    n96,
    n58,
    n53,
    n57,
    n68
  );


  nand
  g86
  (
    n89,
    n58,
    n64,
    n47
  );


  nand
  g87
  (
    n91,
    n42,
    n47,
    n41,
    n63
  );


  xor
  g88
  (
    n103,
    n53,
    n56,
    n80,
    n38
  );


  nor
  g89
  (
    AntiSAT_key_wire,
    n72,
    n58,
    n60,
    n55
  );


  buf
  g90
  (
    n125,
    n114
  );


  buf
  g91
  (
    n132,
    n81
  );


  not
  g92
  (
    n126,
    n81
  );


  buf
  g93
  (
    n129,
    n122
  );


  xor
  g94
  (
    n130,
    n119,
    n110,
    n105,
    n106
  );


  or
  g95
  (
    n128,
    n109,
    n82
  );


  xor
  g96
  (
    n123,
    n81,
    n116,
    n107,
    n108
  );


  and
  g97
  (
    n127,
    n81,
    n118,
    n111,
    n80
  );


  xor
  g98
  (
    n124,
    n115,
    n113,
    n32,
    n121
  );


  xor
  g99
  (
    n131,
    n120,
    n117,
    n112,
    n82
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
    n122,
    AntiSAT_output,
    AntiSAT_key_wire
  );


endmodule

