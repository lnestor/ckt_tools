

module Stat_100_44
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
  n112,
  n113,
  n114,
  n123,
  n105,
  n101,
  n122,
  n111,
  n115,
  n119,
  n110,
  n131,
  n103,
  n107,
  n109,
  n129,
  n116,
  n106,
  n128,
  n132,
  n130,
  n125,
  n120,
  n117,
  n118,
  n126,
  n127,
  n104,
  n121,
  n108,
  n102,
  n124,
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
  output n112;output n113;output n114;output n123;output n105;output n101;output n122;output n111;output n115;output n119;output n110;output n131;output n103;output n107;output n109;output n129;output n116;output n106;output n128;output n132;output n130;output n125;output n120;output n117;output n118;output n126;output n127;output n104;output n121;output n108;output n102;output n124;
  wire n33;wire n34;wire n35;wire n36;wire n37;wire n38;wire n39;wire n40;wire n41;wire n42;wire n43;wire n44;wire n45;wire n46;wire n47;wire n48;wire n49;wire n50;wire n51;wire n52;wire n53;wire n54;wire n55;wire n56;wire n57;wire n58;wire n59;wire n60;wire n61;wire n62;wire n63;wire n64;wire n65;wire n66;wire n67;wire n68;wire n69;wire n70;wire n71;wire n72;wire n73;wire n74;wire n75;wire n76;wire n77;wire n78;wire n79;wire n80;wire n81;wire n82;wire n83;wire n84;wire n85;wire n86;wire n87;wire n88;wire n89;wire n90;wire n91;wire n92;wire n93;wire n94;wire n95;wire n96;wire n97;wire n98;wire n99;wire n100;wire g_input_0_0;wire gbar_input_0_0;wire g_input_0_1;wire gbar_input_0_1;wire g_input_0_2;wire gbar_input_0_2;wire g_input_0_3;wire gbar_input_0_3;wire g_input_0_4;wire gbar_input_0_4;wire g_input_0_5;wire gbar_input_0_5;wire g_input_0_6;wire gbar_input_0_6;wire g_input_0_7;wire gbar_input_0_7;wire g_input_0_8;wire gbar_input_0_8;wire g_input_0_9;wire gbar_input_0_9;wire g_input_0_10;wire gbar_input_0_10;wire g_input_0_11;wire gbar_input_0_11;wire g_input_0_12;wire gbar_input_0_12;wire g_input_0_13;wire gbar_input_0_13;wire g_input_0_14;wire gbar_input_0_14;wire g_input_0_15;wire gbar_input_0_15;wire g_input_0_16;wire gbar_input_0_16;wire g_input_0_17;wire gbar_input_0_17;wire g_input_0_18;wire gbar_input_0_18;wire g_input_0_19;wire gbar_input_0_19;wire g_input_0_20;wire gbar_input_0_20;wire g_input_0_21;wire gbar_input_0_21;wire g_input_0_22;wire gbar_input_0_22;wire g_input_0_23;wire gbar_input_0_23;wire g_input_0_24;wire gbar_input_0_24;wire g_input_0_25;wire gbar_input_0_25;wire g_input_0_26;wire gbar_input_0_26;wire g_input_0_27;wire gbar_input_0_27;wire g_input_0_28;wire gbar_input_0_28;wire g_input_0_29;wire gbar_input_0_29;wire g_input_0_30;wire gbar_input_0_30;wire g_input_0_31;wire gbar_input_0_31;wire f_g_wire;wire f_gbar_wire;wire AntiSAT_output;

  not
  g0
  (
    n45,
    n19
  );


  buf
  g1
  (
    n88,
    n21
  );


  not
  g2
  (
    n39,
    n22
  );


  not
  g3
  (
    n74,
    n18
  );


  buf
  g4
  (
    n77,
    n31
  );


  buf
  g5
  (
    n65,
    n6
  );


  not
  g6
  (
    n71,
    n1
  );


  not
  g7
  (
    n72,
    n25
  );


  not
  g8
  (
    n75,
    n8
  );


  buf
  g9
  (
    n70,
    n28
  );


  buf
  g10
  (
    n82,
    n26
  );


  not
  g11
  (
    n78,
    n32
  );


  buf
  g12
  (
    n37,
    n20
  );


  not
  g13
  (
    n46,
    n27
  );


  buf
  g14
  (
    n84,
    n23
  );


  not
  g15
  (
    n63,
    n15
  );


  not
  g16
  (
    n50,
    n13
  );


  not
  g17
  (
    n49,
    n27
  );


  buf
  g18
  (
    n48,
    n3
  );


  not
  g19
  (
    n60,
    n29
  );


  buf
  g20
  (
    n33,
    n11
  );


  not
  g21
  (
    n34,
    n29
  );


  buf
  g22
  (
    n51,
    n14
  );


  not
  g23
  (
    n52,
    n4
  );


  not
  g24
  (
    n38,
    n27
  );


  buf
  g25
  (
    n68,
    n23
  );


  not
  g26
  (
    n85,
    n30
  );


  not
  g27
  (
    n73,
    n25
  );


  buf
  g28
  (
    n36,
    n24
  );


  not
  g29
  (
    n55,
    n5
  );


  buf
  g30
  (
    n43,
    n16
  );


  not
  g31
  (
    n80,
    n28
  );


  not
  g32
  (
    n86,
    n21
  );


  buf
  g33
  (
    n66,
    n9
  );


  buf
  g34
  (
    n76,
    n17
  );


  not
  g35
  (
    n56,
    n29
  );


  buf
  g36
  (
    n61,
    n21
  );


  buf
  g37
  (
    n35,
    n32
  );


  not
  g38
  (
    n79,
    n31
  );


  buf
  g39
  (
    n83,
    n26
  );


  buf
  g40
  (
    n58,
    n7
  );


  not
  g41
  (
    n57,
    n24
  );


  not
  g42
  (
    n41,
    n10
  );


  buf
  g43
  (
    n40,
    n30
  );


  buf
  g44
  (
    n69,
    n26
  );


  buf
  g45
  (
    n54,
    n31
  );


  buf
  g46
  (
    n47,
    n12
  );


  buf
  g47
  (
    n64,
    n23
  );


  buf
  g48
  (
    n62,
    n30
  );


  buf
  g49
  (
    n81,
    n25
  );


  buf
  g50
  (
    n44,
    n22
  );


  buf
  g51
  (
    n87,
    n24
  );


  buf
  g52
  (
    n53,
    n22
  );


  buf
  g53
  (
    n42,
    n28
  );


  buf
  g54
  (
    n59,
    n32
  );


  buf
  g55
  (
    n67,
    n2
  );


  buf
  g56
  (
    n91,
    n38
  );


  not
  g57
  (
    n92,
    n36
  );


  buf
  g58
  (
    n89,
    n34
  );


  and
  g59
  (
    n90,
    n33,
    n35,
    n37
  );


  not
  g60
  (
    n95,
    n91
  );


  buf
  g61
  (
    n93,
    n90
  );


  buf
  g62
  (
    n98,
    n92
  );


  buf
  g63
  (
    n100,
    n92
  );


  not
  g64
  (
    n97,
    n92
  );


  not
  g65
  (
    n96,
    n91
  );


  not
  g66
  (
    n94,
    n91
  );


  buf
  g67
  (
    n99,
    n89
  );


  xnor
  g68
  (
    AntiSAT_key_wire,
    n98,
    n75,
    n97,
    n54
  );


  xor
  g69
  (
    n103,
    n69,
    n56,
    n62,
    n85
  );


  or
  g70
  (
    n126,
    n88,
    n76,
    n63,
    n68
  );


  and
  g71
  (
    n128,
    n100,
    n96,
    n45,
    n93
  );


  xnor
  g72
  (
    n113,
    n74,
    n51,
    n52,
    n76
  );


  and
  g73
  (
    n129,
    n84,
    n99,
    n66
  );


  xnor
  g74
  (
    n118,
    n82,
    n44,
    n86,
    n88
  );


  and
  g75
  (
    n114,
    n96,
    n98,
    n75,
    n70
  );


  xor
  g76
  (
    n125,
    n81,
    n53,
    n66,
    n97
  );


  nand
  g77
  (
    n117,
    n71,
    n73,
    n79
  );


  and
  g78
  (
    n123,
    n79,
    n72,
    n88
  );


  nand
  g79
  (
    n124,
    n43,
    n71,
    n95,
    n85
  );


  xnor
  g80
  (
    n119,
    n100,
    n81,
    n60,
    n94
  );


  and
  g81
  (
    n104,
    n87,
    n66,
    n42,
    n86
  );


  nand
  g82
  (
    n132,
    n93,
    n69,
    n94,
    n77
  );


  xnor
  g83
  (
    n111,
    n76,
    n67,
    n70,
    n80
  );


  xnor
  g84
  (
    n107,
    n83,
    n82,
    n95,
    n77
  );


  xnor
  g85
  (
    n109,
    n99,
    n94,
    n82,
    n65
  );


  or
  g86
  (
    n115,
    n98,
    n79,
    n49,
    n68
  );


  xnor
  g87
  (
    n121,
    n80,
    n50,
    n93,
    n68
  );


  nand
  g88
  (
    n101,
    n78,
    n99,
    n95,
    n41
  );


  or
  g89
  (
    n110,
    n98,
    n78,
    n61,
    n100
  );


  nand
  g90
  (
    n131,
    n80,
    n40,
    n94,
    n78
  );


  or
  g91
  (
    n112,
    n59,
    n48,
    n97,
    n58
  );


  nand
  g92
  (
    n105,
    n86,
    n46,
    n84,
    n81
  );


  xnor
  g93
  (
    n122,
    n97,
    n67,
    n39,
    n64
  );


  xor
  g94
  (
    n108,
    n95,
    n75,
    n47,
    n70
  );


  and
  g95
  (
    n120,
    n57,
    n87,
    n73,
    n96
  );


  or
  g96
  (
    n130,
    n55,
    n69,
    n87,
    n100
  );


  nand
  g97
  (
    n116,
    n74,
    n85,
    n84,
    n96
  );


  nand
  g98
  (
    n106,
    n93,
    n67,
    n77,
    n74
  );


  or
  g99
  (
    n102,
    n71,
    n83,
    n72
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
    n127,
    AntiSAT_output,
    AntiSAT_key_wire
  );


endmodule

