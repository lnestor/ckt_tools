/* Generated by Yosys 0.9+3710 (git sha1 2116c585, clang 12.0.0 -fPIC -Os) */

module Stat_221_421(n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n231, n212, n208, n238, n207, n226, n218, n214, n220, n227, n234, n235, n228, n222, n223, n209, n230, n224, n221, n210, n233, n216, n219, n237, n236, n232, n217, n213, n229, n215, n211, n225);
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
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  input n1;
  input n10;
  wire n100;
  wire n101;
  wire n109;
  input n11;
  wire n110;
  wire n112;
  wire n114;
  wire n115;
  wire n117;
  wire n118;
  input n12;
  wire n120;
  wire n122;
  wire n123;
  wire n124;
  wire n128;
  wire n129;
  input n13;
  wire n130;
  wire n131;
  wire n133;
  wire n138;
  input n14;
  wire n140;
  wire n141;
  wire n142;
  wire n147;
  input n15;
  wire n150;
  wire n151;
  wire n153;
  wire n154;
  wire n155;
  wire n158;
  input n16;
  wire n161;
  wire n168;
  input n17;
  wire n172;
  wire n175;
  wire n177;
  wire n18;
  wire n180;
  wire n181;
  wire n187;
  wire n188;
  wire n19;
  wire n190;
  wire n195;
  wire n196;
  wire n197;
  wire n199;
  input n2;
  wire n200;
  wire n203;
  wire n205;
  wire n206;
  output n207;
  output n208;
  output n209;
  output n210;
  output n211;
  output n212;
  output n213;
  output n214;
  output n215;
  output n216;
  output n217;
  output n218;
  output n219;
  wire n22;
  output n220;
  output n221;
  output n222;
  output n223;
  output n224;
  output n225;
  output n226;
  output n227;
  output n228;
  output n229;
  wire n23;
  output n230;
  output n231;
  output n232;
  output n233;
  output n234;
  output n235;
  output n236;
  output n237;
  output n238;
  wire n27;
  wire n29;
  input n3;
  wire n30;
  wire n31;
  wire n35;
  wire n36;
  wire n37;
  input n4;
  wire n43;
  wire n45;
  wire n49;
  input n5;
  wire n50;
  wire n51;
  wire n54;
  wire n55;
  wire n58;
  input n6;
  wire n60;
  wire n62;
  wire n63;
  wire n66;
  wire n67;
  input n7;
  wire n73;
  wire n74;
  wire n77;
  wire n78;
  wire n79;
  input n8;
  wire n85;
  wire n86;
  wire n88;
  input n9;
  wire n90;
  wire n91;
  wire n93;
  wire n96;
  wire n97;
  wire n98;
  wire n99;
  NOT _150_ (
    .A(n5),
    .Y(_102_)
  );
  NOT _151_ (
    .A(n9),
    .Y(_103_)
  );
  NOT _152_ (
    .A(n17),
    .Y(_104_)
  );
  NOT _153_ (
    .A(n14),
    .Y(_105_)
  );
  NOT _154_ (
    .A(n8),
    .Y(_106_)
  );
  NOT _155_ (
    .A(n2),
    .Y(_107_)
  );
  NOT _156_ (
    .A(n3),
    .Y(_108_)
  );
  NOT _157_ (
    .A(n4),
    .Y(_109_)
  );
  NOT _158_ (
    .A(n1),
    .Y(_110_)
  );
  NOT _159_ (
    .A(n16),
    .Y(_111_)
  );
  NOT _160_ (
    .A(n6),
    .Y(_112_)
  );
  NOT _161_ (
    .A(n11),
    .Y(_113_)
  );
  NOT _162_ (
    .A(n12),
    .Y(_114_)
  );
  NOT _163_ (
    .A(n13),
    .Y(_115_)
  );
  NOT _164_ (
    .A(n7),
    .Y(_116_)
  );
  NOT _165_ (
    .A(n15),
    .Y(_117_)
  );
  NAND _166_ (
    .A(_107_),
    .B(_108_),
    .Y(_118_)
  );
  NOT _167_ (
    .A(_118_),
    .Y(_119_)
  );
  NAND _168_ (
    .A(n8),
    .B(_119_),
    .Y(_120_)
  );
  NAND _169_ (
    .A(_109_),
    .B(_120_),
    .Y(_121_)
  );
  NOT _170_ (
    .A(_121_),
    .Y(_122_)
  );
  NAND _171_ (
    .A(_108_),
    .B(_110_),
    .Y(_123_)
  );
  NOT _172_ (
    .A(_123_),
    .Y(_124_)
  );
  NAND _173_ (
    .A(_102_),
    .B(_113_),
    .Y(_125_)
  );
  NOT _174_ (
    .A(_125_),
    .Y(_126_)
  );
  NAND _175_ (
    .A(_124_),
    .B(_126_),
    .Y(_127_)
  );
  NOT _176_ (
    .A(_127_),
    .Y(_128_)
  );
  NAND _177_ (
    .A(_122_),
    .B(_127_),
    .Y(_129_)
  );
  NAND _178_ (
    .A(_121_),
    .B(_128_),
    .Y(_130_)
  );
  NAND _179_ (
    .A(_129_),
    .B(_130_),
    .Y(n220)
  );
  NAND _180_ (
    .A(n2),
    .B(_108_),
    .Y(_131_)
  );
  NOT _181_ (
    .A(_131_),
    .Y(_132_)
  );
  NAND _182_ (
    .A(_109_),
    .B(_132_),
    .Y(n213)
  );
  NAND _183_ (
    .A(n8),
    .B(_110_),
    .Y(_133_)
  );
  NOT _184_ (
    .A(_133_),
    .Y(_134_)
  );
  NAND _185_ (
    .A(_106_),
    .B(n1),
    .Y(_135_)
  );
  NAND _186_ (
    .A(_133_),
    .B(_135_),
    .Y(_136_)
  );
  NOT _187_ (
    .A(_136_),
    .Y(_137_)
  );
  NAND _188_ (
    .A(n3),
    .B(n10),
    .Y(_138_)
  );
  NOT _189_ (
    .A(_138_),
    .Y(_139_)
  );
  NAND _190_ (
    .A(n16),
    .B(n6),
    .Y(_140_)
  );
  NOT _191_ (
    .A(_140_),
    .Y(_141_)
  );
  NAND _192_ (
    .A(_139_),
    .B(_141_),
    .Y(_142_)
  );
  NOT _193_ (
    .A(_142_),
    .Y(_143_)
  );
  NAND _194_ (
    .A(_102_),
    .B(_143_),
    .Y(_144_)
  );
  NAND _195_ (
    .A(n5),
    .B(_142_),
    .Y(_145_)
  );
  NAND _196_ (
    .A(_144_),
    .B(_145_),
    .Y(_146_)
  );
  NOT _197_ (
    .A(_146_),
    .Y(_147_)
  );
  NAND _198_ (
    .A(_137_),
    .B(_147_),
    .Y(_148_)
  );
  NAND _199_ (
    .A(_136_),
    .B(_146_),
    .Y(_149_)
  );
  NAND _200_ (
    .A(_148_),
    .B(_149_),
    .Y(n227)
  );
  NAND _201_ (
    .A(n3),
    .B(_117_),
    .Y(_000_)
  );
  NAND _202_ (
    .A(_108_),
    .B(n15),
    .Y(_001_)
  );
  NAND _203_ (
    .A(_000_),
    .B(_001_),
    .Y(n231)
  );
  NAND _204_ (
    .A(n4),
    .B(_110_),
    .Y(_002_)
  );
  NOT _205_ (
    .A(_002_),
    .Y(_003_)
  );
  NAND _206_ (
    .A(n6),
    .B(n7),
    .Y(_004_)
  );
  NOT _207_ (
    .A(_004_),
    .Y(_005_)
  );
  NAND _208_ (
    .A(_003_),
    .B(_005_),
    .Y(n229)
  );
  NAND _209_ (
    .A(_102_),
    .B(_109_),
    .Y(_006_)
  );
  NOT _210_ (
    .A(_006_),
    .Y(_007_)
  );
  NAND _211_ (
    .A(n5),
    .B(n4),
    .Y(_008_)
  );
  NOT _212_ (
    .A(_008_),
    .Y(_009_)
  );
  NAND _213_ (
    .A(_006_),
    .B(_008_),
    .Y(_010_)
  );
  NOT _214_ (
    .A(_010_),
    .Y(n234)
  );
  NAND _215_ (
    .A(_107_),
    .B(_114_),
    .Y(_011_)
  );
  NAND _216_ (
    .A(n2),
    .B(n12),
    .Y(_012_)
  );
  NAND _217_ (
    .A(_011_),
    .B(_012_),
    .Y(_013_)
  );
  NAND _218_ (
    .A(_109_),
    .B(_110_),
    .Y(_014_)
  );
  NOT _219_ (
    .A(_014_),
    .Y(_015_)
  );
  NAND _220_ (
    .A(n5),
    .B(_015_),
    .Y(_016_)
  );
  NOT _221_ (
    .A(_016_),
    .Y(_017_)
  );
  NAND _222_ (
    .A(_013_),
    .B(_017_),
    .Y(n212)
  );
  NAND _223_ (
    .A(n2),
    .B(n3),
    .Y(_018_)
  );
  NAND _224_ (
    .A(_118_),
    .B(_018_),
    .Y(_019_)
  );
  NOT _225_ (
    .A(_019_),
    .Y(_020_)
  );
  NAND _226_ (
    .A(n17),
    .B(_007_),
    .Y(_021_)
  );
  NAND _227_ (
    .A(n1),
    .B(_021_),
    .Y(_022_)
  );
  NOT _228_ (
    .A(_022_),
    .Y(_023_)
  );
  NAND _229_ (
    .A(_019_),
    .B(_023_),
    .Y(_024_)
  );
  NAND _230_ (
    .A(_020_),
    .B(_022_),
    .Y(_025_)
  );
  NAND _231_ (
    .A(_024_),
    .B(_025_),
    .Y(n217)
  );
  NAND _232_ (
    .A(_108_),
    .B(n1),
    .Y(_026_)
  );
  NOT _233_ (
    .A(_026_),
    .Y(_027_)
  );
  NAND _234_ (
    .A(n5),
    .B(_113_),
    .Y(_028_)
  );
  NAND _235_ (
    .A(n3),
    .B(_110_),
    .Y(_029_)
  );
  NOT _236_ (
    .A(_029_),
    .Y(_030_)
  );
  NAND _237_ (
    .A(_028_),
    .B(_030_),
    .Y(_031_)
  );
  NAND _238_ (
    .A(_026_),
    .B(_031_),
    .Y(_032_)
  );
  NOT _239_ (
    .A(_032_),
    .Y(_033_)
  );
  NAND _240_ (
    .A(_116_),
    .B(_033_),
    .Y(_034_)
  );
  NAND _241_ (
    .A(n7),
    .B(_032_),
    .Y(_035_)
  );
  NAND _242_ (
    .A(_034_),
    .B(_035_),
    .Y(n226)
  );
  NAND _243_ (
    .A(_109_),
    .B(_027_),
    .Y(_036_)
  );
  NOT _244_ (
    .A(_036_),
    .Y(n233)
  );
  NAND _245_ (
    .A(_102_),
    .B(n4),
    .Y(_037_)
  );
  NOT _246_ (
    .A(_037_),
    .Y(_038_)
  );
  NAND _247_ (
    .A(n2),
    .B(n10),
    .Y(_039_)
  );
  NOT _248_ (
    .A(_039_),
    .Y(_040_)
  );
  NAND _249_ (
    .A(_102_),
    .B(n2),
    .Y(_041_)
  );
  NOT _250_ (
    .A(_041_),
    .Y(_042_)
  );
  NAND _251_ (
    .A(_038_),
    .B(_040_),
    .Y(n208)
  );
  NAND _252_ (
    .A(n2),
    .B(_003_),
    .Y(_043_)
  );
  NOT _253_ (
    .A(_043_),
    .Y(_044_)
  );
  NAND _254_ (
    .A(_103_),
    .B(n3),
    .Y(_045_)
  );
  NOT _255_ (
    .A(_045_),
    .Y(_046_)
  );
  NAND _256_ (
    .A(n9),
    .B(_108_),
    .Y(_047_)
  );
  NAND _257_ (
    .A(_045_),
    .B(_047_),
    .Y(_048_)
  );
  NOT _258_ (
    .A(_048_),
    .Y(_049_)
  );
  NAND _259_ (
    .A(_102_),
    .B(_114_),
    .Y(_050_)
  );
  NAND _260_ (
    .A(n5),
    .B(n12),
    .Y(_051_)
  );
  NAND _261_ (
    .A(_050_),
    .B(_051_),
    .Y(_052_)
  );
  NOT _262_ (
    .A(_052_),
    .Y(_053_)
  );
  NAND _263_ (
    .A(_048_),
    .B(_052_),
    .Y(_054_)
  );
  NAND _264_ (
    .A(_049_),
    .B(_053_),
    .Y(_055_)
  );
  NAND _265_ (
    .A(_054_),
    .B(_055_),
    .Y(_056_)
  );
  NAND _266_ (
    .A(_044_),
    .B(_056_),
    .Y(_057_)
  );
  NOT _267_ (
    .A(_057_),
    .Y(n232)
  );
  NAND _268_ (
    .A(_105_),
    .B(_108_),
    .Y(_058_)
  );
  NOT _269_ (
    .A(_058_),
    .Y(_059_)
  );
  NAND _270_ (
    .A(_003_),
    .B(_059_),
    .Y(_060_)
  );
  NOT _271_ (
    .A(_060_),
    .Y(n225)
  );
  NAND _272_ (
    .A(_102_),
    .B(n13),
    .Y(_061_)
  );
  NAND _273_ (
    .A(_107_),
    .B(_061_),
    .Y(_062_)
  );
  NOT _274_ (
    .A(_062_),
    .Y(_063_)
  );
  NAND _275_ (
    .A(_026_),
    .B(_029_),
    .Y(_064_)
  );
  NOT _276_ (
    .A(_064_),
    .Y(_065_)
  );
  NAND _277_ (
    .A(_062_),
    .B(_064_),
    .Y(_066_)
  );
  NAND _278_ (
    .A(_063_),
    .B(_065_),
    .Y(_067_)
  );
  NAND _279_ (
    .A(_066_),
    .B(_067_),
    .Y(n214)
  );
  NAND _280_ (
    .A(_107_),
    .B(n1),
    .Y(_068_)
  );
  NOT _281_ (
    .A(_068_),
    .Y(n224)
  );
  NAND _282_ (
    .A(_104_),
    .B(_007_),
    .Y(_069_)
  );
  NOT _283_ (
    .A(_069_),
    .Y(n238)
  );
  NAND _284_ (
    .A(_134_),
    .B(_042_),
    .Y(n223)
  );
  NAND _285_ (
    .A(n3),
    .B(n4),
    .Y(_070_)
  );
  NOT _286_ (
    .A(_070_),
    .Y(_071_)
  );
  NAND _287_ (
    .A(n224),
    .B(_071_),
    .Y(n216)
  );
  NAND _288_ (
    .A(n1),
    .B(_111_),
    .Y(_072_)
  );
  NAND _289_ (
    .A(_110_),
    .B(n16),
    .Y(_073_)
  );
  NAND _290_ (
    .A(_072_),
    .B(_073_),
    .Y(_074_)
  );
  NAND _291_ (
    .A(_038_),
    .B(_074_),
    .Y(_075_)
  );
  NOT _292_ (
    .A(_075_),
    .Y(n209)
  );
  NAND _293_ (
    .A(n5),
    .B(_044_),
    .Y(_076_)
  );
  NOT _294_ (
    .A(_076_),
    .Y(n211)
  );
  NAND _295_ (
    .A(_107_),
    .B(n13),
    .Y(_077_)
  );
  NOT _296_ (
    .A(_077_),
    .Y(_078_)
  );
  NAND _297_ (
    .A(n4),
    .B(_078_),
    .Y(_079_)
  );
  NOT _298_ (
    .A(_079_),
    .Y(n215)
  );
  NAND _299_ (
    .A(n2),
    .B(n15),
    .Y(_080_)
  );
  NOT _300_ (
    .A(_080_),
    .Y(_081_)
  );
  NAND _301_ (
    .A(_112_),
    .B(_081_),
    .Y(_082_)
  );
  NOT _302_ (
    .A(_082_),
    .Y(_083_)
  );
  NAND _303_ (
    .A(_052_),
    .B(_083_),
    .Y(_084_)
  );
  NOT _304_ (
    .A(_084_),
    .Y(n235)
  );
  NAND _305_ (
    .A(_003_),
    .B(_042_),
    .Y(_085_)
  );
  NOT _306_ (
    .A(_085_),
    .Y(n221)
  );
  NAND _307_ (
    .A(n3),
    .B(_009_),
    .Y(_086_)
  );
  NOT _308_ (
    .A(_086_),
    .Y(n230)
  );
  NAND _309_ (
    .A(n2),
    .B(_115_),
    .Y(_087_)
  );
  NAND _310_ (
    .A(_077_),
    .B(_087_),
    .Y(_088_)
  );
  NOT _311_ (
    .A(_088_),
    .Y(_089_)
  );
  NAND _312_ (
    .A(_102_),
    .B(n11),
    .Y(_090_)
  );
  NAND _313_ (
    .A(_028_),
    .B(_090_),
    .Y(_091_)
  );
  NOT _314_ (
    .A(_091_),
    .Y(_092_)
  );
  NAND _315_ (
    .A(_088_),
    .B(_092_),
    .Y(_093_)
  );
  NAND _316_ (
    .A(_089_),
    .B(_091_),
    .Y(_094_)
  );
  NAND _317_ (
    .A(_093_),
    .B(_094_),
    .Y(_095_)
  );
  NAND _318_ (
    .A(_104_),
    .B(_111_),
    .Y(_096_)
  );
  NAND _319_ (
    .A(_015_),
    .B(_096_),
    .Y(_097_)
  );
  NOT _320_ (
    .A(_097_),
    .Y(_098_)
  );
  NAND _321_ (
    .A(_095_),
    .B(_098_),
    .Y(n236)
  );
  NAND _322_ (
    .A(n4),
    .B(_019_),
    .Y(_099_)
  );
  NAND _323_ (
    .A(_109_),
    .B(_020_),
    .Y(_100_)
  );
  NAND _324_ (
    .A(_099_),
    .B(_100_),
    .Y(n207)
  );
  NAND _325_ (
    .A(n1),
    .B(_046_),
    .Y(_101_)
  );
  NOT _326_ (
    .A(_101_),
    .Y(n228)
  );
  assign n100 = n4;
  assign n101 = n4;
  assign n109 = n2;
  assign n110 = n4;
  assign n112 = n7;
  assign n114 = n6;
  assign n115 = n5;
  assign n117 = n2;
  assign n118 = n1;
  assign n120 = n5;
  assign n122 = n5;
  assign n123 = n1;
  assign n124 = n4;
  assign n128 = n5;
  assign n129 = n7;
  assign n130 = n2;
  assign n131 = n2;
  assign n133 = n1;
  assign n138 = n2;
  assign n140 = n5;
  assign n141 = n4;
  assign n142 = n4;
  assign n147 = n15;
  assign n150 = n5;
  assign n151 = n5;
  assign n153 = n4;
  assign n154 = n4;
  assign n155 = n1;
  assign n158 = n4;
  assign n161 = n5;
  assign n168 = n2;
  assign n172 = n3;
  assign n175 = n1;
  assign n177 = n15;
  assign n18 = n3;
  assign n180 = n4;
  assign n181 = n2;
  assign n187 = n3;
  assign n188 = n3;
  assign n19 = n2;
  assign n190 = n5;
  assign n195 = n13;
  assign n196 = n3;
  assign n197 = n4;
  assign n199 = n3;
  assign n200 = n3;
  assign n203 = n2;
  assign n205 = n3;
  assign n206 = n2;
  assign n210 = 1'h1;
  assign n218 = 1'h0;
  assign n219 = 1'h0;
  assign n22 = n5;
  assign n222 = 1'h0;
  assign n23 = n3;
  assign n237 = 1'h1;
  assign n27 = n4;
  assign n29 = n4;
  assign n30 = n1;
  assign n31 = n2;
  assign n35 = n3;
  assign n36 = n2;
  assign n37 = n4;
  assign n43 = n3;
  assign n45 = n5;
  assign n49 = n4;
  assign n50 = n1;
  assign n51 = n2;
  assign n54 = n1;
  assign n55 = n1;
  assign n58 = n5;
  assign n60 = n4;
  assign n62 = n1;
  assign n63 = n3;
  assign n66 = n1;
  assign n67 = n3;
  assign n73 = n2;
  assign n74 = n2;
  assign n77 = n2;
  assign n78 = n3;
  assign n79 = n1;
  assign n85 = n9;
  assign n86 = n14;
  assign n88 = n1;
  assign n90 = n3;
  assign n91 = n5;
  assign n93 = n4;
  assign n96 = n4;
  assign n97 = n3;
  assign n98 = n1;
  assign n99 = n3;
endmodule
