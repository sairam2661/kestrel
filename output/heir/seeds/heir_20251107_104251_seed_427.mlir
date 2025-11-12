"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi16>, tensor<8xi16>) -> i16, sym_name = "complex_dot_product"}> ({
  ^bb0(%arg0: tensor<8xi16>, %arg1: tensor<8xi16>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "arith.constant"() <{value = 8 : index}> : () -> index
    %9 = "arith.constant"() <{value = 9 : index}> : () -> index
    %10 = "scf.for"(%0, %8, %1) ({
    ^bb0(%arg2: index, %arg3: i16):
      %11 = "tensor.extract"(%arg0, %arg2) : (tensor<8xi16>, index) -> i16
      %12 = "tensor.extract"(%arg1, %arg2) : (tensor<8xi16>, index) -> i16
      %13 = "arith.muli"(%11, %12) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
      %14 = "arith.addi"(%13, %arg3) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
      "scf.yield"(%14) : (i16) -> ()
    }) : (index, i16) -> i16
    "func.return"(%10) : (i16) -> ()
  }) : () -> ()
}) : () -> ()