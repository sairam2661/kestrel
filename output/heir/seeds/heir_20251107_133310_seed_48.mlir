"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecretvectorxi16x8, !secretsecretvectorxi16x8) -> i16, sym_name = "complex_rotations"}> ({
  ^bb0(%arg0: !secretsecretvectorxi16x8, %arg1: !secretsecretvectorxi16x8):
    %0 = "arith.constant"() <{value = 123456789 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : i16}> : () -> i16
    %2 = "arith.constant"() <{value = 2 : i16}> : () -> i16
    %3 = "arith.constant"() <{value = 3 : i16}> : () -> i16
    %4 = "arith.constant"() <{value = 4 : i16}> : () -> i16
    %5 = "arith.constant"() <{value = 5 : i16}> : () -> i16
    %6 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: vector<8xi16>, %arg3: vector<8xi16>):
      %7 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arithoverflownone}> : (vector<8xi16>, vector<8xi16>) -> vector<8xi16>
      %8 = "tensor_ext.rotate"(%7, %0) : (vector<8xi16>, index) -> vector<8xi16>
      %9 = "arith.subi"(%8, %2) <{overflowFlags = #arithoverflownone}> : (vector<8xi16>, i16) -> vector<8xi16>
      %10 = "tensor_ext.rotate"(%9, %3) : (vector<8xi16>, i16) -> vector<8xi16>
      %11 = "arith.addi"(%10, %4) <{overflowFlags = #arithoverflownone}> : (vector<8xi16>, i16) -> vector<8xi16>
      %12 = "tensor_ext.rotate"(%11, %5) : (vector<8xi16>, i16) -> vector<8xi16>
      "secret.yield"(%12) : (vector<8xi16>) -> ()
    }) : (!secretsecretvectorxi16x8, !secretsecretvectorxi16x8) -> !secretsecretvectorxi16x8
    %13 = "tensor.extract"(%6, %0) : (vector<8xi16>, index) -> i16
    "func.return"(%13) : (i16) -> ()
  }) : () -> ()
}) : () -> ()