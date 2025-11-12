"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xf32>, tensor<3x2xf32>) -> tensor<2x3xf32>, sym_name = "transpose_and_add"}> ({
  ^bb0(%arg0: tensor<2x3xf32>, %arg1: tensor<3x2xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tosa.transpose"(%arg1, %0, %1) : (tensor<3x2xf32>, index, index) -> tensor<2x3xf32>
    %3 = "arith.addf"(%arg0, %2) : (tensor<2x3xf32>, tensor<2x3xf32>) -> tensor<2x3xf32>
    "func.return"(%3) : (tensor<2x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()