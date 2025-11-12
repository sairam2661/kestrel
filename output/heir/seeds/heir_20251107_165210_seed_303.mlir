"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>, sym_name = "mixed_dialect_operations"}> ({
  ^bb0(%arg0: tensor<16xi8>, %arg1: tensor<16xi8>):
    %c0_i8 = "arith.constant"() <{value = 0 : i8}> : () -> i8
    %c1_i8 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %c2_i8 = "arith.constant"() <{value = 2 : i8}> : () -> i8
    %c3_i8 = "arith.constant"() <{value = 3 : i8}> : () -> i8
    %c4_i8 = "arith.constant"() <{value = 4 : i8}> : () -> i8
    %c5_i8 = "arith.constant"() <{value = 5 : i8}> : () -> i8
    %c6_i8 = "arith.constant"() <{value = 6 : i8}> : () -> i8
    %c7_i8 = "arith.constant"() <{value = 7 : i8}> : () -> i8
    %c8_i8 = "arith.constant"() <{value = 8 : i8}> : () -> i8
    %c9_i8 = "arith.constant"() <{value = 9 : i8}> : () -> i8
    %c10_i8 = "arith.constant"() <{value = 10 : i8}> : () -> i8
    %c11_i8 = "arith.constant"() <{value = 11 : i8}> : () -> i8
    %c12_i8 = "arith.constant"() <{value = 12 : i8}> : () -> i8
    %c13_i8 = "arith.constant"() <{value = 13 : i8}> : () -> i8
    %c14_i8 = "arith.constant"() <{value = 14 : i8}> : () -> i8
    %c15_i8 = "arith.constant"() <{value = 15 : i8}> : () -> i8

    %index = "arith.constant"() <{value = 0 : index}> : () -> index
    %result = "arith.constant"() <{value = 0 : i8}> : () -> i8

    "scf.for"(%index, %result) <{lowerBound = #arithConstant, upperBound = #arithConstant, step = #arithConstant}> ({
    ^bb0(%indvar: index, %red: i8):
      %extract0 = "tensor.extract"(%arg0, %indvar) : (tensor<16xi8>, index) -> i8
      %extract1 = "tensor.extract"(%arg1, %indvar) : (tensor<16xi8>, index) -> i8
      %add = "arith.addi"(%extract0, %extract1) <{overflowFlags = #arith_overflow}> : (i8, i8) -> i8
      %cmp = "arith.cmpi"(%add, %c10_i8, "slt") : (i8, i8) -> i1
      %select = "arith.select"(%cmp, %c10_i8, %add) : (i1, i8, i8) -> i8
      %new_indvar = "arith.addi"(%indvar, %c1_i8) <{overflowFlags = #arith_overflow}> : (index, index) -> index
      "scf.yield"(%new_indvar, %select) : (index, i8) -> ()
    }) : (index, i8) -> (index, i8)
    "func.return"(%result) : (i8) -> ()
  }) : () -> ()
}) : () -> ()