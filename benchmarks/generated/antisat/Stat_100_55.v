

module Stat_100_55
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
  n98,
  n103,
  n107,
  n109,
  n104,
  n112,
  n131,
  n117,
  n113,
  n126,
  n116,
  n120,
  n114,
  n115,
  n132,
  n108,
  n127,
  n121,
  n122,
  n128,
  n111,
  n106,
  n125,
  n123,
  n102,
  n118,
  n105,
  n129,
  n110,
  n119,
  n130,
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
  output n98;output n103;output n107;output n109;output n104;output n112;output n131;output n117;output n113;output n126;output n116;output n120;output n114;output n115;output n132;output n108;output n127;output n121;output n122;output n128;output n111;output n106;output n125;output n123;output n102;output n118;output n105;output n129;output n110;output n119;output n130;output n124;
  wire n33;wire n34;wire n35;wire n36;wire n37;wire n38;wire n39;wire n40;wire n41;wire n42;wire n43;wire n44;wire n45;wire n46;wire n47;wire n48;wire n49;wire n50;wire n51;wire n52;wire n53;wire n54;wire n55;wire n56;wire n57;wire n58;wire n59;wire n60;wire n61;wire n62;wire n63;wire n64;wire n65;wire n66;wire n67;wire n68;wire n69;wire n70;wire n71;wire n72;wire n73;wire n74;wire n75;wire n76;wire n77;wire n78;wire n79;wire n80;wire n81;wire n82;wire n83;wire n84;wire n85;wire n86;wire n87;wire n88;wire n89;wire n90;wire n91;wire n92;wire n93;wire n94;wire n95;wire n96;wire n97;wire n99;wire n100;wire n101;wire g_input_0_0;wire gbar_input_0_0;wire g_input_0_1;wire gbar_input_0_1;wire g_input_0_2;wire gbar_input_0_2;wire g_input_0_3;wire gbar_input_0_3;wire g_input_0_4;wire gbar_input_0_4;wire g_input_0_5;wire gbar_input_0_5;wire g_input_0_6;wire gbar_input_0_6;wire g_input_0_7;wire gbar_input_0_7;wire g_input_0_8;wire gbar_input_0_8;wire g_input_0_9;wire gbar_input_0_9;wire g_input_0_10;wire gbar_input_0_10;wire g_input_0_11;wire gbar_input_0_11;wire g_input_0_12;wire gbar_input_0_12;wire g_input_0_13;wire gbar_input_0_13;wire g_input_0_14;wire gbar_input_0_14;wire g_input_0_15;wire gbar_input_0_15;wire g_input_0_16;wire gbar_input_0_16;wire g_input_0_17;wire gbar_input_0_17;wire g_input_0_18;wire gbar_input_0_18;wire g_input_0_19;wire gbar_input_0_19;wire g_input_0_20;wire gbar_input_0_20;wire g_input_0_21;wire gbar_input_0_21;wire g_input_0_22;wire gbar_input_0_22;wire g_input_0_23;wire gbar_input_0_23;wire g_input_0_24;wire gbar_input_0_24;wire g_input_0_25;wire gbar_input_0_25;wire g_input_0_26;wire gbar_input_0_26;wire g_input_0_27;wire gbar_input_0_27;wire g_input_0_28;wire gbar_input_0_28;wire g_input_0_29;wire gbar_input_0_29;wire g_input_0_30;wire gbar_input_0_30;wire g_input_0_31;wire gbar_input_0_31;wire f_g_wire;wire f_gbar_wire;wire AntiSAT_output;

  not
  g0
  (
    n33,
    n9
  );


  buf
  g1
  (
    n37,
    n4
  );


  buf
  g2
  (
    n42,
    n6
  );


  buf
  g3
  (
    n41,
    n10
  );


  buf
  g4
  (
    n38,
    n3
  );


  buf
  g5
  (
    n36,
    n2
  );


  buf
  g6
  (
    n34,
    n5
  );


  buf
  g7
  (
    n39,
    n1
  );


  buf
  g8
  (
    n40,
    n8
  );


  not
  g9
  (
    n35,
    n7
  );


  buf
  g10
  (
    n74,
    n36
  );


  not
  g11
  (
    n46,
    n35
  );


  not
  g12
  (
    n59,
    n36
  );


  not
  g13
  (
    n61,
    n34
  );


  buf
  g14
  (
    n44,
    n38
  );


  buf
  g15
  (
    n57,
    n12
  );


  not
  g16
  (
    n62,
    n37
  );


  buf
  g17
  (
    n52,
    n38
  );


  buf
  g18
  (
    n67,
    n37
  );


  not
  g19
  (
    n49,
    n40
  );


  not
  g20
  (
    n69,
    n35
  );


  not
  g21
  (
    n77,
    n38
  );


  buf
  g22
  (
    n60,
    n11
  );


  buf
  g23
  (
    n50,
    n38
  );


  buf
  g24
  (
    n63,
    n34
  );


  buf
  g25
  (
    n70,
    n37
  );


  buf
  g26
  (
    n47,
    n39
  );


  not
  g27
  (
    n65,
    n40
  );


  not
  g28
  (
    n76,
    n13
  );


  not
  g29
  (
    n68,
    n39
  );


  buf
  g30
  (
    n56,
    n33
  );


  not
  g31
  (
    n64,
    n36
  );


  not
  g32
  (
    n58,
    n33
  );


  buf
  g33
  (
    n53,
    n41
  );


  not
  g34
  (
    n54,
    n35
  );


  not
  g35
  (
    n43,
    n33
  );


  buf
  g36
  (
    n71,
    n34
  );


  not
  g37
  (
    n66,
    n35
  );


  buf
  g38
  (
    n45,
    n33
  );


  not
  g39
  (
    n55,
    n37
  );


  buf
  g40
  (
    n75,
    n39
  );


  not
  g41
  (
    n73,
    n40
  );


  buf
  g42
  (
    n72,
    n39
  );


  buf
  g43
  (
    n51,
    n36
  );


  or
  g44
  (
    n48,
    n40,
    n34,
    n41
  );


  nor
  g45
  (
    n78,
    n22,
    n46,
    n24,
    n32
  );


  nor
  g46
  (
    n80,
    n32,
    n32,
    n16,
    n31
  );


  nand
  g47
  (
    n81,
    n43,
    n29,
    n47,
    n23
  );


  and
  g48
  (
    n79,
    n18,
    n45,
    n20,
    n21
  );


  nand
  g49
  (
    n82,
    n30,
    n30,
    n44,
    n14
  );


  or
  g50
  (
    n85,
    n28,
    n19,
    n25,
    n50
  );


  or
  g51
  (
    n83,
    n51,
    n49,
    n17,
    n27
  );


  nor
  g52
  (
    n84,
    n26,
    n31,
    n48,
    n15
  );


  buf
  g53
  (
    n92,
    n80
  );


  not
  g54
  (
    n97,
    n83
  );


  not
  g55
  (
    n86,
    n53
  );


  not
  g56
  (
    n100,
    n42
  );


  not
  g57
  (
    n94,
    n42
  );


  not
  g58
  (
    n91,
    n83
  );


  buf
  g59
  (
    n88,
    n32
  );


  buf
  g60
  (
    n87,
    n55
  );


  buf
  g61
  (
    n99,
    n55
  );


  buf
  g62
  (
    n101,
    n83
  );


  xor
  g63
  (
    n89,
    n54,
    n82
  );


  and
  g64
  (
    n96,
    n79,
    n85,
    n41,
    n84
  );


  or
  g65
  (
    n90,
    n52,
    n84,
    n82
  );


  and
  g66
  (
    n93,
    n82,
    n54,
    n42
  );


  and
  g67
  (
    n95,
    n84,
    n53,
    n54,
    n83
  );


  xor
  g68
  (
    n98,
    n84,
    n42,
    n81,
    n78
  );


  and
  g69
  (
    n132,
    n58,
    n73,
    n65,
    n62
  );


  or
  g70
  (
    n115,
    n68,
    n70,
    n61,
    n69
  );


  nand
  g71
  (
    n106,
    n59,
    n61,
    n56,
    n100
  );


  or
  g72
  (
    n128,
    n74,
    n66,
    n72,
    n62
  );


  xnor
  g73
  (
    n108,
    n55,
    n70,
    n63,
    n92
  );


  xnor
  g74
  (
    n123,
    n87,
    n56,
    n64,
    n95
  );


  nor
  g75
  (
    n104,
    n67,
    n88,
    n61,
    n60
  );


  xor
  g76
  (
    n114,
    n68,
    n77,
    n74,
    n64
  );


  nor
  g77
  (
    n110,
    n75,
    n101,
    n55,
    n67
  );


  or
  g78
  (
    AntiSAT_key_wire,
    n65,
    n97,
    n71,
    n60
  );


  xor
  g79
  (
    n120,
    n56,
    n62,
    n99,
    n100
  );


  xor
  g80
  (
    n111,
    n100,
    n62,
    n74,
    n91
  );


  xnor
  g81
  (
    n126,
    n96,
    n58,
    n67,
    n90
  );


  nand
  g82
  (
    n121,
    n57,
    n66,
    n99,
    n69
  );


  nor
  g83
  (
    n116,
    n75,
    n69,
    n59,
    n94
  );


  xnor
  g84
  (
    n118,
    n72,
    n97,
    n61,
    n98
  );


  nand
  g85
  (
    n112,
    n75,
    n59,
    n57,
    n100
  );


  and
  g86
  (
    n107,
    n64,
    n85,
    n58,
    n77
  );


  and
  g87
  (
    n103,
    n69,
    n98,
    n65
  );


  xnor
  g88
  (
    n102,
    n56,
    n76,
    n73
  );


  xnor
  g89
  (
    n130,
    n89,
    n59,
    n97,
    n74
  );


  nand
  g90
  (
    n109,
    n101,
    n66,
    n71
  );


  nor
  g91
  (
    n122,
    n76,
    n97,
    n71,
    n86
  );


  xnor
  g92
  (
    n124,
    n63,
    n63,
    n99,
    n75
  );


  xnor
  g93
  (
    n113,
    n60,
    n76,
    n85,
    n101
  );


  and
  g94
  (
    n105,
    n77,
    n73,
    n72,
    n68
  );


  and
  g95
  (
    n127,
    n57,
    n70,
    n66,
    n85
  );


  xor
  g96
  (
    n117,
    n99,
    n68,
    n73,
    n58
  );


  nand
  g97
  (
    n119,
    n64,
    n98,
    n101,
    n70
  );


  nand
  g98
  (
    n129,
    n93,
    n63,
    n65,
    n67
  );


  and
  g99
  (
    n131,
    n72,
    n57,
    n60,
    n77
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

