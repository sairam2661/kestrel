"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi16>, sym_name = "byte_to_word_sum"}> ({
  ^bb0(%arg0: tensor<16xi8>, %arg1: tensor<16xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %3 = "arith.constant"() <{value = 256 : i16}> : () -> i16
    %4 = "scf.for"(%0, %16, %1, %2) ({
    ^bb0(%arg2: index, %arg3: i16):
      %5 = "tensor.extract"(%arg0, %arg2) : (tensor<16xi8>, index) -> i8
      %6 = "tensor.extract"(%arg1, %arg2) : (tensor<16xi8>, index) -> i8
      %7 = "arith.extui"(%5) : (i8) -> i16
      %8 = "arith.extui"(%6) : (i8) -> i16
      %9 = "arith.addi"(%7, %8) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
      %10 = "arith.addi"(%9, %arg3) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
      "scf.yield"(%10) : (i16) -> ()
    }) : (index, index, index, i16) -> i16
    "func.return"(%4) : (i16) -> ()
  }) : () -> ()
}) : () -> ()