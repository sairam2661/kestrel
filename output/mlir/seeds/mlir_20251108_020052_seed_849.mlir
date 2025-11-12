"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<3x4xi8>) -> tensor<2x4xi16>, sym_name = "test_complex_matmul"}> ({
    ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<3x4xi8>):
      %0 = "arith.constant"() <{value = 1 : i8}> : () -> i8
      %1 = "arith.constant"() <{value = 2 : i8}> : () -> i8
      %2 = "arith.addi"(%arg0, %0) : (tensor<2x3xi8>, i8) -> tensor<2x3xi8>
      %3 = "arith.addi"(%arg1, %1) : (tensor<3x4xi8>, i8) -> tensor<3x4xi8>
      %4 = "tosa.matmul"(%2, %3) : (tensor<2x3xi8>, tensor<3x4xi8>) -> tensor<2x4xi16>
      "func.return"(%4) : (tensor<2x4xi16>) -> ()
  }) : () -> ()
}) : () -> ()