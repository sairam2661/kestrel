"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4x5xf32>, tensor<3x1x1xf32>) -> tensor<*xf32>, sym_name = "add_partial_splat"}> ({
  ^bb0(%arg0: tensor<2x3x4x5xf32>, %arg1: tensor<3x1x1xf32>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<2x3x4x5xf32>, tensor<3x1x1xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

