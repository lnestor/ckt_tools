

module Stat_100_46
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
  n70,
  n69,
  n120,
  n102,
  n121,
  n106,
  n108,
  n112,
  n114,
  n109,
  n85,
  n83,
  n94,
  n111,
  n99,
  n115,
  n92,
  n116,
  n89,
  n86,
  n110,
  n119,
  n125,
  n123,
  n127,
  n131,
  n128,
  n126,
  n124,
  n132,
  n130,
  n129,
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
  output n70;output n69;output n120;output n102;output n121;output n106;output n108;output n112;output n114;output n109;output n85;output n83;output n94;output n111;output n99;output n115;output n92;output n116;output n89;output n86;output n110;output n119;output n125;output n123;output n127;output n131;output n128;output n126;output n124;output n132;output n130;output n129;
  wire n33;wire n34;wire n35;wire n36;wire n37;wire n38;wire n39;wire n40;wire n41;wire n42;wire n43;wire n44;wire n45;wire n46;wire n47;wire n48;wire n49;wire n50;wire n51;wire n52;wire n53;wire n54;wire n55;wire n56;wire n57;wire n58;wire n59;wire n60;wire n61;wire n62;wire n63;wire n64;wire n65;wire n66;wire n67;wire n68;wire n71;wire n72;wire n73;wire n74;wire n75;wire n76;wire n77;wire n78;wire n79;wire n80;wire n81;wire n82;wire n84;wire n87;wire n88;wire n90;wire n91;wire n93;wire n95;wire n96;wire n97;wire n98;wire n100;wire n101;wire n103;wire n104;wire n105;wire n107;wire n113;wire n117;wire n118;wire n122;wire g_input_0_0;wire gbar_input_0_0;wire g_input_0_1;wire gbar_input_0_1;wire g_input_0_2;wire gbar_input_0_2;wire g_input_0_3;wire gbar_input_0_3;wire g_input_0_4;wire gbar_input_0_4;wire g_input_0_5;wire gbar_input_0_5;wire g_input_0_6;wire gbar_input_0_6;wire g_input_0_7;wire gbar_input_0_7;wire g_input_0_8;wire gbar_input_0_8;wire g_input_0_9;wire gbar_input_0_9;wire g_input_0_10;wire gbar_input_0_10;wire g_input_0_11;wire gbar_input_0_11;wire g_input_0_12;wire gbar_input_0_12;wire g_input_0_13;wire gbar_input_0_13;wire g_input_0_14;wire gbar_input_0_14;wire g_input_0_15;wire gbar_input_0_15;wire g_input_0_16;wire gbar_input_0_16;wire g_input_0_17;wire gbar_input_0_17;wire g_input_0_18;wire gbar_input_0_18;wire g_input_0_19;wire gbar_input_0_19;wire g_input_0_20;wire gbar_input_0_20;wire g_input_0_21;wire gbar_input_0_21;wire g_input_0_22;wire gbar_input_0_22;wire g_input_0_23;wire gbar_input_0_23;wire g_input_0_24;wire gbar_input_0_24;wire g_input_0_25;wire gbar_input_0_25;wire g_input_0_26;wire gbar_input_0_26;wire g_input_0_27;wire gbar_input_0_27;wire g_input_0_28;wire gbar_input_0_28;wire g_input_0_29;wire gbar_input_0_29;wire g_input_0_30;wire gbar_input_0_30;wire g_input_0_31;wire gbar_input_0_31;wire f_g_wire;wire f_gbar_wire;wire AntiSAT_output;

  buf
  g0
  (
    n42,
    n3
  );


  not
  g1
  (
    n35,
    n1
  );


  not
  g2
  (
    n43,
    n10
  );


  not
  g3
  (
    n36,
    n5
  );


  buf
  g4
  (
    n37,
    n4
  );


  buf
  g5
  (
    n40,
    n9
  );


  buf
  g6
  (
    n33,
    n7
  );


  not
  g7
  (
    n41,
    n6
  );


  buf
  g8
  (
    n39,
    n2
  );


  not
  g9
  (
    n34,
    n11
  );


  not
  g10
  (
    n38,
    n8
  );


  not
  g11
  (
    n48,
    n36
  );


  buf
  g12
  (
    n55,
    n35
  );


  buf
  g13
  (
    n56,
    n37
  );


  not
  g14
  (
    n63,
    n36
  );


  buf
  g15
  (
    n71,
    n43
  );


  buf
  g16
  (
    n62,
    n41
  );


  buf
  g17
  (
    n70,
    n41
  );


  not
  g18
  (
    n57,
    n34
  );


  not
  g19
  (
    n68,
    n42
  );


  buf
  g20
  (
    n64,
    n38
  );


  not
  g21
  (
    n59,
    n35
  );


  buf
  g22
  (
    n75,
    n38
  );


  not
  g23
  (
    n47,
    n41
  );


  buf
  g24
  (
    n74,
    n39
  );


  buf
  g25
  (
    n45,
    n43
  );


  buf
  g26
  (
    n73,
    n39
  );


  not
  g27
  (
    n44,
    n36
  );


  not
  g28
  (
    n81,
    n40
  );


  buf
  g29
  (
    n78,
    n37
  );


  buf
  g30
  (
    n79,
    n43
  );


  buf
  g31
  (
    n69,
    n42
  );


  not
  g32
  (
    n61,
    n35
  );


  buf
  g33
  (
    n49,
    n35
  );


  not
  g34
  (
    n51,
    n38
  );


  buf
  g35
  (
    n76,
    n37
  );


  not
  g36
  (
    n60,
    n34
  );


  not
  g37
  (
    n80,
    n38
  );


  buf
  g38
  (
    n65,
    n34
  );


  not
  g39
  (
    n50,
    n42
  );


  buf
  g40
  (
    n46,
    n41
  );


  buf
  g41
  (
    n82,
    n36
  );


  buf
  g42
  (
    n66,
    n39
  );


  buf
  g43
  (
    n72,
    n39
  );


  buf
  g44
  (
    n54,
    n43
  );


  buf
  g45
  (
    n77,
    n34
  );


  buf
  g46
  (
    n58,
    n37
  );


  not
  g47
  (
    n67,
    n40
  );


  buf
  g48
  (
    n52,
    n42
  );


  buf
  g49
  (
    n53,
    n40
  );


  not
  g50
  (
    n110,
    n70
  );


  buf
  g51
  (
    n91,
    n56
  );


  xor
  g52
  (
    n95,
    n55,
    n72,
    n71
  );


  nor
  g53
  (
    n108,
    n77,
    n82,
    n69,
    n65
  );


  nor
  g54
  (
    n109,
    n46,
    n63,
    n60,
    n77
  );


  xor
  g55
  (
    n84,
    n46,
    n66,
    n58,
    n71
  );


  xnor
  g56
  (
    n86,
    n78,
    n77,
    n50
  );


  or
  g57
  (
    n83,
    n61,
    n47,
    n62,
    n68
  );


  or
  g58
  (
    n98,
    n79,
    n78,
    n55,
    n50
  );


  or
  g59
  (
    n104,
    n57,
    n81,
    n68
  );


  nor
  g60
  (
    n93,
    n78,
    n76,
    n79,
    n61
  );


  nor
  g61
  (
    n101,
    n62,
    n73,
    n55,
    n57
  );


  xnor
  g62
  (
    n119,
    n70,
    n56,
    n49,
    n48
  );


  xor
  g63
  (
    n85,
    n59,
    n56,
    n80,
    n58
  );


  and
  g64
  (
    n105,
    n67,
    n64,
    n81,
    n62
  );


  xnor
  g65
  (
    n120,
    n75,
    n70,
    n60,
    n63
  );


  or
  g66
  (
    n100,
    n79,
    n81,
    n51,
    n54
  );


  or
  g67
  (
    n117,
    n64,
    n59,
    n74,
    n82
  );


  or
  g68
  (
    n122,
    n64,
    n76,
    n75,
    n73
  );


  xnor
  g69
  (
    n99,
    n55,
    n75,
    n59,
    n64
  );


  nand
  g70
  (
    n112,
    n48,
    n79,
    n71,
    n69
  );


  xor
  g71
  (
    n121,
    n57,
    n45,
    n49,
    n73
  );


  or
  g72
  (
    n116,
    n72,
    n80,
    n62,
    n74
  );


  xnor
  g73
  (
    n118,
    n75,
    n60,
    n45,
    n69
  );


  or
  g74
  (
    n113,
    n49,
    n51,
    n53
  );


  xor
  g75
  (
    n92,
    n65,
    n47,
    n51,
    n66
  );


  nor
  g76
  (
    n89,
    n54,
    n54,
    n82,
    n50
  );


  and
  g77
  (
    n90,
    n80,
    n66,
    n57
  );


  xor
  g78
  (
    n106,
    n53,
    n50,
    n47,
    n12
  );


  xnor
  g79
  (
    n114,
    n72,
    n82,
    n61,
    n63
  );


  xor
  g80
  (
    n111,
    n65,
    n49,
    n76,
    n60
  );


  nand
  g81
  (
    n96,
    n45,
    n71,
    n48,
    n47
  );


  or
  g82
  (
    n97,
    n58,
    n67,
    n53,
    n61
  );


  or
  g83
  (
    n107,
    n67,
    n46,
    n69,
    n45
  );


  or
  g84
  (
    n88,
    n76,
    n52,
    n73
  );


  nor
  g85
  (
    n115,
    n78,
    n56,
    n58,
    n68
  );


  nand
  g86
  (
    n102,
    n59,
    n74,
    n80,
    n54
  );


  xnor
  g87
  (
    n87,
    n74,
    n65,
    n52,
    n70
  );


  xnor
  g88
  (
    n94,
    n48,
    n68,
    n53,
    n67
  );


  nand
  g89
  (
    n103,
    n52,
    n72,
    n46,
    n63
  );


  xnor
  g90
  (
    n126,
    n13,
    n105,
    n108,
    n110
  );


  nor
  g91
  (
    n129,
    n115,
    n24,
    n119,
    n19
  );


  nand
  g92
  (
    n124,
    n30,
    n113,
    n104,
    n28
  );


  nor
  g93
  (
    n123,
    n114,
    n25,
    n111,
    n109
  );


  or
  g94
  (
    n130,
    n122,
    n117,
    n29,
    n15
  );


  nand
  g95
  (
    n131,
    n120,
    n14,
    n103,
    n16
  );


  or
  g96
  (
    n128,
    n112,
    n17,
    n26,
    n121
  );


  xor
  g97
  (
    n127,
    n31,
    n20,
    n21,
    n23
  );


  or
  g98
  (
    n132,
    n107,
    n116,
    n106,
    n118
  );


  and
  g99
  (
    AntiSAT_key_wire,
    n27,
    n22,
    n32,
    n18
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
    n125,
    AntiSAT_output,
    AntiSAT_key_wire
  );


endmodule

