

module Stat_100_47
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
  n110,
  n132,
  n126,
  n125,
  n102,
  n121,
  n127,
  n112,
  n115,
  n129,
  n119,
  n109,
  n107,
  n108,
  n128,
  n131,
  n114,
  n103,
  n104,
  n113,
  n111,
  n122,
  n105,
  n117,
  n118,
  n124,
  n101,
  n120,
  n116,
  n123,
  n106,
  n130,
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
  output n110;output n132;output n126;output n125;output n102;output n121;output n127;output n112;output n115;output n129;output n119;output n109;output n107;output n108;output n128;output n131;output n114;output n103;output n104;output n113;output n111;output n122;output n105;output n117;output n118;output n124;output n101;output n120;output n116;output n123;output n106;output n130;
  wire n33;wire n34;wire n35;wire n36;wire n37;wire n38;wire n39;wire n40;wire n41;wire n42;wire n43;wire n44;wire n45;wire n46;wire n47;wire n48;wire n49;wire n50;wire n51;wire n52;wire n53;wire n54;wire n55;wire n56;wire n57;wire n58;wire n59;wire n60;wire n61;wire n62;wire n63;wire n64;wire n65;wire n66;wire n67;wire n68;wire n69;wire n70;wire n71;wire n72;wire n73;wire n74;wire n75;wire n76;wire n77;wire n78;wire n79;wire n80;wire n81;wire n82;wire n83;wire n84;wire n85;wire n86;wire n87;wire n88;wire n89;wire n90;wire n91;wire n92;wire n93;wire n94;wire n95;wire n96;wire n97;wire n98;wire n99;wire n100;wire g_input_0_0;wire gbar_input_0_0;wire g_input_0_1;wire gbar_input_0_1;wire g_input_0_2;wire gbar_input_0_2;wire g_input_0_3;wire gbar_input_0_3;wire g_input_0_4;wire gbar_input_0_4;wire g_input_0_5;wire gbar_input_0_5;wire g_input_0_6;wire gbar_input_0_6;wire g_input_0_7;wire gbar_input_0_7;wire g_input_0_8;wire gbar_input_0_8;wire g_input_0_9;wire gbar_input_0_9;wire g_input_0_10;wire gbar_input_0_10;wire g_input_0_11;wire gbar_input_0_11;wire g_input_0_12;wire gbar_input_0_12;wire g_input_0_13;wire gbar_input_0_13;wire g_input_0_14;wire gbar_input_0_14;wire g_input_0_15;wire gbar_input_0_15;wire g_input_0_16;wire gbar_input_0_16;wire g_input_0_17;wire gbar_input_0_17;wire g_input_0_18;wire gbar_input_0_18;wire g_input_0_19;wire gbar_input_0_19;wire g_input_0_20;wire gbar_input_0_20;wire g_input_0_21;wire gbar_input_0_21;wire g_input_0_22;wire gbar_input_0_22;wire g_input_0_23;wire gbar_input_0_23;wire g_input_0_24;wire gbar_input_0_24;wire g_input_0_25;wire gbar_input_0_25;wire g_input_0_26;wire gbar_input_0_26;wire g_input_0_27;wire gbar_input_0_27;wire g_input_0_28;wire gbar_input_0_28;wire g_input_0_29;wire gbar_input_0_29;wire g_input_0_30;wire gbar_input_0_30;wire g_input_0_31;wire gbar_input_0_31;wire f_g_wire;wire f_gbar_wire;wire AntiSAT_output;

  not
  g0
  (
    n33,
    n1
  );


  buf
  g1
  (
    n37,
    n1
  );


  buf
  g2
  (
    n34,
    n1
  );


  not
  g3
  (
    n36,
    n2
  );


  not
  g4
  (
    n35,
    n1
  );


  buf
  g5
  (
    n45,
    n34
  );


  buf
  g6
  (
    n46,
    n35
  );


  not
  g7
  (
    n40,
    n34
  );


  buf
  g8
  (
    n48,
    n34
  );


  buf
  g9
  (
    n56,
    n33
  );


  buf
  g10
  (
    n42,
    n35
  );


  buf
  g11
  (
    n53,
    n33
  );


  not
  g12
  (
    n44,
    n37
  );


  buf
  g13
  (
    n47,
    n36
  );


  buf
  g14
  (
    n52,
    n33
  );


  buf
  g15
  (
    n38,
    n34
  );


  buf
  g16
  (
    n41,
    n37
  );


  buf
  g17
  (
    n55,
    n36
  );


  not
  g18
  (
    n54,
    n37
  );


  buf
  g19
  (
    n43,
    n33
  );


  buf
  g20
  (
    n50,
    n36
  );


  buf
  g21
  (
    n51,
    n35
  );


  not
  g22
  (
    n49,
    n35
  );


  buf
  g23
  (
    n39,
    n36
  );


  not
  g24
  (
    n79,
    n28
  );


  buf
  g25
  (
    n75,
    n9
  );


  and
  g26
  (
    n65,
    n47,
    n18,
    n8,
    n29
  );


  nor
  g27
  (
    n70,
    n26,
    n8,
    n55,
    n20
  );


  or
  g28
  (
    n91,
    n48,
    n11,
    n56,
    n6
  );


  xnor
  g29
  (
    n63,
    n31,
    n42,
    n45,
    n29
  );


  xor
  g30
  (
    n82,
    n7,
    n2,
    n50
  );


  xnor
  g31
  (
    n78,
    n22,
    n25,
    n13,
    n26
  );


  xor
  g32
  (
    n92,
    n52,
    n5,
    n7,
    n40
  );


  nand
  g33
  (
    n67,
    n52,
    n10,
    n7,
    n21
  );


  nor
  g34
  (
    n94,
    n14,
    n11,
    n32,
    n21
  );


  or
  g35
  (
    n60,
    n12,
    n17,
    n28,
    n21
  );


  nor
  g36
  (
    n85,
    n6,
    n48,
    n41,
    n4
  );


  xor
  g37
  (
    n58,
    n30,
    n16,
    n51,
    n27
  );


  nand
  g38
  (
    n71,
    n12,
    n4,
    n31,
    n27
  );


  nor
  g39
  (
    n93,
    n53,
    n14,
    n17,
    n23
  );


  nor
  g40
  (
    n66,
    n11,
    n15,
    n4,
    n25
  );


  or
  g41
  (
    n89,
    n54,
    n26,
    n25,
    n3
  );


  and
  g42
  (
    n72,
    n24,
    n31,
    n9,
    n18
  );


  or
  g43
  (
    n97,
    n27,
    n22,
    n6,
    n24
  );


  or
  g44
  (
    n83,
    n49,
    n43,
    n56,
    n39
  );


  and
  g45
  (
    n98,
    n12,
    n52,
    n23,
    n51
  );


  nand
  g46
  (
    n61,
    n19,
    n50,
    n9
  );


  and
  g47
  (
    n73,
    n22,
    n56,
    n28,
    n20
  );


  or
  g48
  (
    n84,
    n15,
    n19,
    n17,
    n47
  );


  xnor
  g49
  (
    n100,
    n14,
    n19,
    n54,
    n16
  );


  or
  g50
  (
    n81,
    n10,
    n13,
    n52,
    n51
  );


  xnor
  g51
  (
    n57,
    n46,
    n55,
    n18,
    n38
  );


  or
  g52
  (
    n69,
    n29,
    n6,
    n48,
    n54
  );


  nand
  g53
  (
    n62,
    n16,
    n15,
    n12,
    n14
  );


  and
  g54
  (
    n88,
    n51,
    n23,
    n47,
    n3
  );


  xor
  g55
  (
    n74,
    n19,
    n30,
    n56,
    n47
  );


  or
  g56
  (
    n86,
    n3,
    n55,
    n15,
    n18
  );


  nor
  g57
  (
    n76,
    n2,
    n13,
    n5,
    n10
  );


  and
  g58
  (
    n68,
    n13,
    n32,
    n48,
    n11
  );


  and
  g59
  (
    n80,
    n23,
    n44,
    n7,
    n55
  );


  nor
  g60
  (
    n64,
    n49,
    n20,
    n5,
    n54
  );


  or
  g61
  (
    n59,
    n10,
    n8,
    n28,
    n26
  );


  or
  g62
  (
    n87,
    n17,
    n20,
    n2,
    n5
  );


  and
  g63
  (
    n99,
    n4,
    n53,
    n49,
    n3
  );


  xnor
  g64
  (
    n77,
    n31,
    n24,
    n27
  );


  xnor
  g65
  (
    n95,
    n16,
    n29,
    n22,
    n50
  );


  xor
  g66
  (
    n96,
    n49,
    n53,
    n8
  );


  xnor
  g67
  (
    n90,
    n21,
    n30,
    n25
  );


  nor
  g68
  (
    n119,
    n79,
    n94,
    n64,
    n58
  );


  xor
  g69
  (
    n115,
    n100,
    n79,
    n81,
    n87
  );


  xnor
  g70
  (
    n123,
    n85,
    n98,
    n92,
    n91
  );


  nand
  g71
  (
    n132,
    n78,
    n76,
    n95,
    n83
  );


  or
  g72
  (
    n101,
    n67,
    n76,
    n92,
    n77
  );


  or
  g73
  (
    n105,
    n92,
    n95,
    n79,
    n68
  );


  nor
  g74
  (
    n108,
    n95,
    n93,
    n80,
    n79
  );


  xor
  g75
  (
    n118,
    n94,
    n94,
    n81,
    n90
  );


  xnor
  g76
  (
    n128,
    n61,
    n77,
    n87,
    n82
  );


  and
  g77
  (
    n121,
    n63,
    n72,
    n87,
    n78
  );


  or
  g78
  (
    n131,
    n73,
    n96,
    n84,
    n80
  );


  xnor
  g79
  (
    n127,
    n96,
    n97,
    n81,
    n74
  );


  and
  g80
  (
    n116,
    n84,
    n96,
    n71,
    n83
  );


  nor
  g81
  (
    n129,
    n85,
    n88,
    n84,
    n98
  );


  and
  g82
  (
    n111,
    n65,
    n100,
    n97,
    n94
  );


  and
  g83
  (
    n124,
    n88,
    n59,
    n76,
    n99
  );


  or
  g84
  (
    n130,
    n75,
    n60,
    n97,
    n57
  );


  or
  g85
  (
    n112,
    n74,
    n66,
    n77,
    n93
  );


  xor
  g86
  (
    n109,
    n77,
    n99,
    n93,
    n74
  );


  xor
  g87
  (
    n102,
    n89,
    n86,
    n90,
    n82
  );


  nor
  g88
  (
    n113,
    n82,
    n90,
    n76,
    n78
  );


  nor
  g89
  (
    n122,
    n89,
    n82,
    n88,
    n100
  );


  xor
  g90
  (
    n120,
    n83,
    n88,
    n86,
    n91
  );


  nand
  g91
  (
    n125,
    n100,
    n99,
    n32,
    n75
  );


  xor
  g92
  (
    n103,
    n93,
    n92,
    n74,
    n98
  );


  xnor
  g93
  (
    AntiSAT_key_wire,
    n99,
    n70,
    n80
  );


  or
  g94
  (
    n114,
    n90,
    n87,
    n91,
    n69
  );


  xnor
  g95
  (
    n104,
    n86,
    n78,
    n98,
    n83
  );


  and
  g96
  (
    n126,
    n95,
    n62,
    n85,
    n89
  );


  xor
  g97
  (
    n117,
    n84,
    n37,
    n91,
    n97
  );


  and
  g98
  (
    n110,
    n86,
    n85,
    n75
  );


  and
  g99
  (
    n107,
    n32,
    n89,
    n81,
    n96
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

