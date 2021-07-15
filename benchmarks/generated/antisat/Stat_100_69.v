

module Stat_100_69
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
  n123,
  n117,
  n103,
  n109,
  n115,
  n116,
  n118,
  n98,
  n104,
  n108,
  n106,
  n120,
  n107,
  n101,
  n102,
  n97,
  n122,
  n119,
  n100,
  n110,
  n111,
  n99,
  n114,
  n121,
  n129,
  n128,
  n126,
  n131,
  n130,
  n125,
  n127,
  n132,
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
  output n123;output n117;output n103;output n109;output n115;output n116;output n118;output n98;output n104;output n108;output n106;output n120;output n107;output n101;output n102;output n97;output n122;output n119;output n100;output n110;output n111;output n99;output n114;output n121;output n129;output n128;output n126;output n131;output n130;output n125;output n127;output n132;
  wire n33;wire n34;wire n35;wire n36;wire n37;wire n38;wire n39;wire n40;wire n41;wire n42;wire n43;wire n44;wire n45;wire n46;wire n47;wire n48;wire n49;wire n50;wire n51;wire n52;wire n53;wire n54;wire n55;wire n56;wire n57;wire n58;wire n59;wire n60;wire n61;wire n62;wire n63;wire n64;wire n65;wire n66;wire n67;wire n68;wire n69;wire n70;wire n71;wire n72;wire n73;wire n74;wire n75;wire n76;wire n77;wire n78;wire n79;wire n80;wire n81;wire n82;wire n83;wire n84;wire n85;wire n86;wire n87;wire n88;wire n89;wire n90;wire n91;wire n92;wire n93;wire n94;wire n95;wire n96;wire n105;wire n112;wire n113;wire n124;wire g_input_0_0;wire gbar_input_0_0;wire g_input_0_1;wire gbar_input_0_1;wire g_input_0_2;wire gbar_input_0_2;wire g_input_0_3;wire gbar_input_0_3;wire g_input_0_4;wire gbar_input_0_4;wire g_input_0_5;wire gbar_input_0_5;wire g_input_0_6;wire gbar_input_0_6;wire g_input_0_7;wire gbar_input_0_7;wire g_input_0_8;wire gbar_input_0_8;wire g_input_0_9;wire gbar_input_0_9;wire g_input_0_10;wire gbar_input_0_10;wire g_input_0_11;wire gbar_input_0_11;wire g_input_0_12;wire gbar_input_0_12;wire g_input_0_13;wire gbar_input_0_13;wire g_input_0_14;wire gbar_input_0_14;wire g_input_0_15;wire gbar_input_0_15;wire g_input_0_16;wire gbar_input_0_16;wire g_input_0_17;wire gbar_input_0_17;wire g_input_0_18;wire gbar_input_0_18;wire g_input_0_19;wire gbar_input_0_19;wire g_input_0_20;wire gbar_input_0_20;wire g_input_0_21;wire gbar_input_0_21;wire g_input_0_22;wire gbar_input_0_22;wire g_input_0_23;wire gbar_input_0_23;wire g_input_0_24;wire gbar_input_0_24;wire g_input_0_25;wire gbar_input_0_25;wire g_input_0_26;wire gbar_input_0_26;wire g_input_0_27;wire gbar_input_0_27;wire g_input_0_28;wire gbar_input_0_28;wire g_input_0_29;wire gbar_input_0_29;wire g_input_0_30;wire gbar_input_0_30;wire g_input_0_31;wire gbar_input_0_31;wire f_g_wire;wire f_gbar_wire;wire AntiSAT_output;

  buf
  g0
  (
    n35,
    n22
  );


  buf
  g1
  (
    n39,
    n3
  );


  buf
  g2
  (
    n41,
    n17
  );


  buf
  g3
  (
    n34,
    n20
  );


  nor
  g4
  (
    n38,
    n11,
    n15,
    n16
  );


  nand
  g5
  (
    n40,
    n8,
    n1,
    n19,
    n18
  );


  or
  g6
  (
    n37,
    n9,
    n5,
    n10,
    n2
  );


  nor
  g7
  (
    n33,
    n4,
    n21,
    n23,
    n6
  );


  xor
  g8
  (
    n36,
    n7,
    n12,
    n13,
    n14
  );


  buf
  g9
  (
    n47,
    n40
  );


  not
  g10
  (
    n49,
    n37
  );


  buf
  g11
  (
    n48,
    n36
  );


  not
  g12
  (
    n42,
    n34
  );


  not
  g13
  (
    n44,
    n33
  );


  buf
  g14
  (
    n45,
    n39
  );


  not
  g15
  (
    n43,
    n38
  );


  buf
  g16
  (
    n46,
    n35
  );


  not
  g17
  (
    n55,
    n46
  );


  buf
  g18
  (
    n56,
    n44
  );


  buf
  g19
  (
    n61,
    n43
  );


  not
  g20
  (
    n51,
    n48
  );


  not
  g21
  (
    n60,
    n49
  );


  not
  g22
  (
    n70,
    n42
  );


  buf
  g23
  (
    n57,
    n46
  );


  buf
  g24
  (
    n54,
    n44
  );


  not
  g25
  (
    n69,
    n45
  );


  not
  g26
  (
    n75,
    n45
  );


  not
  g27
  (
    n52,
    n47
  );


  not
  g28
  (
    n66,
    n43
  );


  not
  g29
  (
    n76,
    n43
  );


  not
  g30
  (
    n68,
    n46
  );


  not
  g31
  (
    n63,
    n43
  );


  buf
  g32
  (
    n72,
    n48
  );


  buf
  g33
  (
    n50,
    n48
  );


  not
  g34
  (
    n62,
    n47
  );


  buf
  g35
  (
    n77,
    n48
  );


  not
  g36
  (
    n74,
    n45
  );


  not
  g37
  (
    n53,
    n46
  );


  buf
  g38
  (
    n73,
    n42
  );


  not
  g39
  (
    n64,
    n47
  );


  not
  g40
  (
    n71,
    n47
  );


  not
  g41
  (
    n59,
    n49
  );


  buf
  g42
  (
    n58,
    n44
  );


  buf
  g43
  (
    n67,
    n44
  );


  nor
  g44
  (
    n65,
    n49,
    n45,
    n41
  );


  not
  g45
  (
    n82,
    n50
  );


  buf
  g46
  (
    n78,
    n54
  );


  not
  g47
  (
    n93,
    n29
  );


  not
  g48
  (
    n88,
    n55
  );


  not
  g49
  (
    n91,
    n53
  );


  buf
  g50
  (
    n83,
    n55
  );


  not
  g51
  (
    n86,
    n53
  );


  buf
  g52
  (
    n87,
    n32
  );


  not
  g53
  (
    n90,
    n26
  );


  buf
  g54
  (
    n89,
    n25
  );


  buf
  g55
  (
    n95,
    n31
  );


  buf
  g56
  (
    n92,
    n53
  );


  not
  g57
  (
    n79,
    n28
  );


  nor
  g58
  (
    n85,
    n55,
    n24,
    n49
  );


  xor
  g59
  (
    n80,
    n27,
    n54,
    n55
  );


  xor
  g60
  (
    n81,
    n54,
    n56,
    n30
  );


  xnor
  g61
  (
    n84,
    n53,
    n51,
    n52
  );


  xnor
  g62
  (
    n94,
    n54,
    n52,
    n51
  );


  nand
  g63
  (
    n103,
    n67,
    n68,
    n74,
    n84
  );


  xnor
  g64
  (
    n118,
    n70,
    n72,
    n93
  );


  or
  g65
  (
    n110,
    n70,
    n68,
    n69,
    n63
  );


  xor
  g66
  (
    AntiSAT_key_wire,
    n90,
    n76,
    n64,
    n80
  );


  and
  g67
  (
    n112,
    n56,
    n93,
    n74
  );


  nor
  g68
  (
    n117,
    n77,
    n68,
    n61,
    n83
  );


  xor
  g69
  (
    n108,
    n65,
    n76,
    n57,
    n61
  );


  xor
  g70
  (
    n114,
    n60,
    n91,
    n70,
    n57
  );


  and
  g71
  (
    n122,
    n61,
    n66,
    n75,
    n89
  );


  and
  g72
  (
    n109,
    n90,
    n71,
    n67,
    n88
  );


  and
  g73
  (
    n123,
    n77,
    n73,
    n89,
    n57
  );


  nand
  g74
  (
    n102,
    n63,
    n73,
    n81
  );


  nand
  g75
  (
    n116,
    n92,
    n69,
    n74,
    n91
  );


  nor
  g76
  (
    n96,
    n63,
    n65,
    n72
  );


  nor
  g77
  (
    n111,
    n82,
    n58,
    n60
  );


  or
  g78
  (
    n97,
    n58,
    n85,
    n61,
    n67
  );


  xnor
  g79
  (
    n124,
    n91,
    n72,
    n68,
    n78
  );


  nand
  g80
  (
    n115,
    n62,
    n79,
    n73,
    n57
  );


  nand
  g81
  (
    n99,
    n86,
    n59,
    n71
  );


  xnor
  g82
  (
    n120,
    n91,
    n92,
    n66
  );


  xor
  g83
  (
    n100,
    n75,
    n62,
    n90,
    n77
  );


  or
  g84
  (
    n107,
    n64,
    n71,
    n70,
    n65
  );


  xor
  g85
  (
    n119,
    n69,
    n64,
    n89,
    n60
  );


  nand
  g86
  (
    n113,
    n75,
    n62,
    n69,
    n87
  );


  or
  g87
  (
    n101,
    n89,
    n56,
    n67,
    n66
  );


  nand
  g88
  (
    n98,
    n76,
    n64,
    n60,
    n75
  );


  xnor
  g89
  (
    n121,
    n92,
    n62,
    n77,
    n59
  );


  nand
  g90
  (
    n105,
    n59,
    n71,
    n63,
    n90
  );


  nor
  g91
  (
    n104,
    n58,
    n76,
    n56,
    n66
  );


  buf
  g92
  (
    n127,
    n94
  );


  buf
  g93
  (
    n125,
    n117
  );


  buf
  g94
  (
    n132,
    n115
  );


  xnor
  g95
  (
    n126,
    n118,
    n123,
    n94
  );


  nand
  g96
  (
    n129,
    n94,
    n95
  );


  xnor
  g97
  (
    n130,
    n120,
    n114,
    n95,
    n93
  );


  nand
  g98
  (
    n131,
    n93,
    n122,
    n95,
    n124
  );


  xnor
  g99
  (
    n128,
    n119,
    n116,
    n113,
    n121
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
    n106,
    AntiSAT_output,
    AntiSAT_key_wire
  );


endmodule

