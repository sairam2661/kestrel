"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi16>, tensor<3x2xi16>) -> tensor<2x2xi16>, sym_name = "matrix_multiply"}> ({
    ^bb0(%arg0: tensor<2x3xi16>, %arg1: tensor<3x2xi16>):
      %0 = "arith.constant"() <{value = 0 : i16}> : () -> i16
      %1 = "arith.constant"() <{value = 2 : index}> : () -> index
      %2 = "arith.constant"() <{value = 3 : index}> : () -> index
      %3 = "arith.constant"() <{value = 2 : index}> : () -> index
      %4 = "arith.constant"() <{value = 3 : index}> : () -> index
      %5 = "tosa.matmul"(%arg0, %arg1) : (tensor<2x3xi16>, tensor<3x2xi16>) -> tensor<2x2xi16>
      %6 = "arith.addi"(%5, %0) : (tensor<2x2xi16>, i16) -> tensor<2x2xi16>
      %7 = "tosa.relu"(%6) : (tensor<2x2xi16>) -> tensor<2x2xi16>
      "func.return"(%7) : (tensor<2x2xi16>) -> ()
  }) : () -> ()
}) : () -> ()