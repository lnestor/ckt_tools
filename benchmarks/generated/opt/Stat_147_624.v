/* Generated by Yosys 0.9+3710 (git sha1 2116c585, clang 12.0.0 -fPIC -Os) */

module Stat_147_624(n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n141, n149, n157, n162, n160, n165, n154, n151, n163, n158, n164, n150, n156, n161, n152, n153, n159, n155);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  input n1;
  input n10;
  input n11;
  input n12;
  input n13;
  input n14;
  output n141;
  output n149;
  input n15;
  output n150;
  output n151;
  output n152;
  output n153;
  output n154;
  output n155;
  output n156;
  output n157;
  output n158;
  output n159;
  input n16;
  output n160;
  output n161;
  output n162;
  output n163;
  output n164;
  output n165;
  input n17;
  input n18;
  wire n19;
  input n2;
  wire n20;
  wire n22;
  wire n25;
  wire n29;
  input n3;
  wire n32;
  wire n34;
  wire n38;
  input n4;
  wire n43;
  wire n44;
  wire n47;
  input n5;
  wire n52;
  wire n53;
  wire n54;
  wire n58;
  input n6;
  wire n60;
  wire n61;
  wire n63;
  wire n64;
  input n7;
  wire n73;
  wire n76;
  input n8;
  input n9;
  NOT _063_ (
    .A(n7),
    .Y(_010_)
  );
  NOT _064_ (
    .A(n5),
    .Y(_011_)
  );
  NOT _065_ (
    .A(n2),
    .Y(_012_)
  );
  NOT _066_ (
    .A(n10),
    .Y(_013_)
  );
  NOT _067_ (
    .A(n6),
    .Y(_014_)
  );
  NOT _068_ (
    .A(n3),
    .Y(_015_)
  );
  NOT _069_ (
    .A(n1),
    .Y(_016_)
  );
  NOT _070_ (
    .A(n8),
    .Y(_017_)
  );
  NOT _071_ (
    .A(n11),
    .Y(_018_)
  );
  NOT _072_ (
    .A(n4),
    .Y(_019_)
  );
  NOT _073_ (
    .A(n15),
    .Y(_020_)
  );
  XNOR2 _074_ (
    .A(n7),
    .B(n11),
    .Y(_021_)
  );
  OR2 _075_ (
    .A(n17),
    .B(_021_),
    .Y(_022_)
  );
  XNOR2 _076_ (
    .A(n2),
    .B(n3),
    .Y(_023_)
  );
  AND6 _077_ (
    .A(n9),
    .B(n7),
    .C(n10),
    .D(n6),
    .E(n1),
    .F(n8),
    .Y(_024_)
  );
  AND3 _078_ (
    .A(_022_),
    .B(_023_),
    .C(_024_),
    .Y(n160)
  );
  NAND3 _079_ (
    .A(n5),
    .B(n10),
    .C(n3),
    .Y(_025_)
  );
  AND4 _080_ (
    .A(n12),
    .B(n2),
    .C(_014_),
    .D(n8),
    .Y(_026_)
  );
  XNOR2 _081_ (
    .A(_025_),
    .B(_026_),
    .Y(_027_)
  );
  NOR2 _082_ (
    .A(n7),
    .B(n3),
    .Y(_028_)
  );
  NOR3 _083_ (
    .A(n7),
    .B(n12),
    .C(n3),
    .Y(_029_)
  );
  AND3 _084_ (
    .A(_015_),
    .B(n4),
    .C(_021_),
    .Y(_030_)
  );
  NAND3 _085_ (
    .A(n4),
    .B(_021_),
    .C(_029_),
    .Y(_031_)
  );
  OR2 _086_ (
    .A(_029_),
    .B(_030_),
    .Y(_032_)
  );
  NAND2 _087_ (
    .A(_031_),
    .B(_032_),
    .Y(_033_)
  );
  XNOR2 _088_ (
    .A(_027_),
    .B(_033_),
    .Y(n163)
  );
  NOR4 _089_ (
    .A(n9),
    .B(_011_),
    .C(n1),
    .D(_019_),
    .Y(_034_)
  );
  NOR2 _090_ (
    .A(n13),
    .B(n17),
    .Y(_035_)
  );
  NAND2 _091_ (
    .A(n7),
    .B(n16),
    .Y(_036_)
  );
  OR5 _092_ (
    .A(n12),
    .B(_030_),
    .C(_034_),
    .D(_035_),
    .E(_036_),
    .Y(n158)
  );
  AND4 _093_ (
    .A(n7),
    .B(_013_),
    .C(n1),
    .D(n11),
    .Y(_037_)
  );
  XNOR5 _094_ (
    .A(n7),
    .B(n5),
    .C(n10),
    .D(n6),
    .E(n11),
    .Y(_038_)
  );
  XNOR2 _095_ (
    .A(n12),
    .B(n17),
    .Y(_039_)
  );
  NAND4 _096_ (
    .A(n12),
    .B(n15),
    .C(n16),
    .D(_021_),
    .Y(_040_)
  );
  NAND4 _097_ (
    .A(n5),
    .B(_013_),
    .C(_016_),
    .D(_040_),
    .Y(_041_)
  );
  XNOR5 _098_ (
    .A(_012_),
    .B(_037_),
    .C(_038_),
    .D(_039_),
    .E(_041_),
    .Y(n156)
  );
  XOR3 _099_ (
    .A(n7),
    .B(n11),
    .C(n15),
    .Y(_042_)
  );
  XOR6 _100_ (
    .A(n7),
    .B(n5),
    .C(n1),
    .D(n8),
    .E(n11),
    .F(n15),
    .Y(_043_)
  );
  XOR5 _101_ (
    .A(n7),
    .B(n2),
    .C(n6),
    .D(n11),
    .E(n4),
    .Y(_044_)
  );
  NAND4 _102_ (
    .A(_010_),
    .B(_011_),
    .C(n10),
    .D(_042_),
    .Y(_045_)
  );
  XNOR2 _103_ (
    .A(n14),
    .B(n16),
    .Y(_046_)
  );
  OR5 _104_ (
    .A(_017_),
    .B(_019_),
    .C(n17),
    .D(_021_),
    .E(_046_),
    .Y(_047_)
  );
  NAND4 _105_ (
    .A(_043_),
    .B(_044_),
    .C(_045_),
    .D(_047_),
    .Y(n165)
  );
  NOR4 _106_ (
    .A(n13),
    .B(n15),
    .C(n14),
    .D(n18),
    .Y(_048_)
  );
  XNOR2 _107_ (
    .A(n14),
    .B(n18),
    .Y(_049_)
  );
  NAND2 _108_ (
    .A(_012_),
    .B(_049_),
    .Y(_050_)
  );
  XNOR2 _109_ (
    .A(n3),
    .B(n11),
    .Y(_051_)
  );
  XNOR4 _110_ (
    .A(n6),
    .B(n8),
    .C(n4),
    .D(_048_),
    .Y(_052_)
  );
  OR5 _111_ (
    .A(n4),
    .B(_029_),
    .C(_050_),
    .D(_051_),
    .E(_052_),
    .Y(n155)
  );
  NAND3 _112_ (
    .A(n9),
    .B(n5),
    .C(n1),
    .Y(_053_)
  );
  NAND3 _113_ (
    .A(_010_),
    .B(n11),
    .C(_035_),
    .Y(_054_)
  );
  NAND4 _114_ (
    .A(_010_),
    .B(_039_),
    .C(_053_),
    .D(_054_),
    .Y(_055_)
  );
  XNOR3 _115_ (
    .A(n10),
    .B(n8),
    .C(_028_),
    .Y(_056_)
  );
  OR3 _116_ (
    .A(_050_),
    .B(_055_),
    .C(_056_),
    .Y(n151)
  );
  OR3 _117_ (
    .A(_010_),
    .B(n1),
    .C(n18),
    .Y(_057_)
  );
  NAND3 _118_ (
    .A(_012_),
    .B(_014_),
    .C(n4),
    .Y(_058_)
  );
  NAND3 _119_ (
    .A(n12),
    .B(n5),
    .C(_016_),
    .Y(_059_)
  );
  AND4 _120_ (
    .A(_030_),
    .B(_057_),
    .C(_058_),
    .D(_059_),
    .Y(n154)
  );
  XNOR4 _121_ (
    .A(n9),
    .B(n6),
    .C(n3),
    .D(n16),
    .Y(_060_)
  );
  NAND4 _122_ (
    .A(n9),
    .B(n1),
    .C(_017_),
    .D(_021_),
    .Y(_061_)
  );
  AND6 _123_ (
    .A(n9),
    .B(_010_),
    .C(n12),
    .D(_018_),
    .E(_019_),
    .F(n15),
    .Y(_062_)
  );
  NAND5 _124_ (
    .A(n14),
    .B(n16),
    .C(_060_),
    .D(_061_),
    .E(_062_),
    .Y(n161)
  );
  XOR3 _125_ (
    .A(n7),
    .B(n11),
    .C(n14),
    .Y(_000_)
  );
  AND4 _126_ (
    .A(n12),
    .B(_011_),
    .C(_012_),
    .D(_014_),
    .Y(_001_)
  );
  AND4 _127_ (
    .A(n9),
    .B(n7),
    .C(n10),
    .D(_019_),
    .Y(_002_)
  );
  AND3 _128_ (
    .A(_000_),
    .B(_001_),
    .C(_002_),
    .Y(n164)
  );
  AND4 _129_ (
    .A(n5),
    .B(_013_),
    .C(n8),
    .D(_018_),
    .Y(_003_)
  );
  OR3 _130_ (
    .A(n11),
    .B(n4),
    .C(_000_),
    .Y(_004_)
  );
  NAND4 _131_ (
    .A(n2),
    .B(n10),
    .C(_042_),
    .D(_000_),
    .Y(_005_)
  );
  NAND2 _132_ (
    .A(_004_),
    .B(_005_),
    .Y(_006_)
  );
  XNOR5 _133_ (
    .A(n9),
    .B(n7),
    .C(_039_),
    .D(_003_),
    .E(_006_),
    .Y(n153)
  );
  NAND4 _134_ (
    .A(n9),
    .B(_015_),
    .C(_020_),
    .D(_021_),
    .Y(_007_)
  );
  XNOR4 _135_ (
    .A(n2),
    .B(n10),
    .C(n3),
    .D(n4),
    .Y(_008_)
  );
  XNOR2 _136_ (
    .A(n8),
    .B(_035_),
    .Y(_009_)
  );
  NAND4 _137_ (
    .A(_029_),
    .B(_007_),
    .C(_008_),
    .D(_009_),
    .Y(n157)
  );
  assign n141 = 1'h1;
  assign n149 = 1'h1;
  assign n150 = 1'h0;
  assign n152 = 1'h1;
  assign n159 = 1'h1;
  assign n162 = 1'h0;
  assign n19 = n7;
  assign n20 = n11;
  assign n22 = n4;
  assign n25 = n9;
  assign n29 = n1;
  assign n32 = n10;
  assign n34 = n1;
  assign n38 = n1;
  assign n43 = n10;
  assign n44 = n6;
  assign n47 = n5;
  assign n52 = n6;
  assign n53 = n3;
  assign n54 = n11;
  assign n58 = n9;
  assign n60 = n9;
  assign n61 = n7;
  assign n63 = n8;
  assign n64 = n2;
  assign n73 = n18;
  assign n76 = n16;
endmodule
