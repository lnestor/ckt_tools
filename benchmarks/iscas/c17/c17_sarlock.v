

module c17
(
  N1,
  N2,
  N3,
  N6,
  N7,
  N22,
  N23,
  keyIn_0_0,
  keyIn_0_1
);

  input N1;input N2;input N3;input N6;input N7;input keyIn_0_0;input keyIn_0_1;
  output N22;output N23;
  wire N10;wire N11;wire N16;wire N19;wire sl_xor_0_0;wire sl_xor_0_1;wire comparator_output;wire mask_or_output;wire mask_output;wire signal_from_circuit;

  nand
  NAND2_1
  (
    N10,
    N1,
    N3
  );


  nand
  NAND2_2
  (
    N11,
    N3,
    N6
  );


  nand
  NAND2_3
  (
    N16,
    N2,
    N11
  );


  nand
  NAND2_4
  (
    N19,
    N11,
    N7
  );


  nand
  NAND2_5
  (
    signal_from_circuit,
    N10,
    N16
  );


  nand
  NAND2_6
  (
    N23,
    N16,
    N19
  );


  xnor
  KeyPIGate_0_0
  (
    sl_xor_0_0,
    keyIn_0_0,
    N1
  );


  xnor
  KeyPIGate_0_1
  (
    sl_xor_0_1,
    keyIn_0_1,
    N2
  );


  and
  Comparator_And
  (
    comparator_output,
    sl_xor_0_0,
    sl_xor_0_1
  );


  or
  Mask_Or
  (
    mask_or_output,
    keyIn_0_0,
    keyIn_0_1
  );


  and
  Mask_And
  (
    mask_output,
    comparator_output,
    mask_or_output
  );


  xor
  flip_it
  (
    N22,
    mask_output,
    signal_from_circuit
  );


endmodule

