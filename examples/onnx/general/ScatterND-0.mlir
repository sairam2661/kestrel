"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4x4xf32>, tensor<2x1xi64>, tensor<2x4x4xf32>) -> tensor<4x4x4xf32>, sym_name = "test_scatter_nd1"}> ({
  ^bb0(%arg0: tensor<4x4x4xf32>, %arg1: tensor<2x1xi64>, %arg2: tensor<2x4x4xf32>):
    %0 = "onnx.ScatterND"(%arg0, %arg1, %arg2) {reduction = "none"} : (tensor<4x4x4xf32>, tensor<2x1xi64>, tensor<2x4x4xf32>) -> tensor<4x4x4xf32>
    "func.return"(%0) : (tensor<4x4x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

