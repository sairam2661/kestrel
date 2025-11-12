"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x3x32xf32>, tensor<4x3x32xf32>) -> tensor<4x3x32xf32>, sym_name = "tensor_add"}> ({
  ^bb0(%arg0: tensor<4x3x32xf32>, %arg1: tensor<4x3x32xf32>):
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<4x3x32xf32>, tensor<4x3x32xf32>) -> tensor<4x3x32xf32>
    "func.return"(%0) : (tensor<4x3x32xf32>) -> ()
  }) : () -> ()
}) : () -> ()