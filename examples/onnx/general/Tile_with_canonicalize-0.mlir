"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x8xf32>) -> tensor<*xf32>, sym_name = "test_tile1"}> ({
  ^bb0(%arg0: tensor<4x8xf32>):
    %0 = "onnx.Constant"() {value = dense<[3, 2]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1 = "onnx.Tile"(%arg0, %0) : (tensor<4x8xf32>, tensor<2xi64>) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

