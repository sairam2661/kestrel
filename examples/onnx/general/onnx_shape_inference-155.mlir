"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x1x32xf32>) -> tensor<*xf32>, sym_name = "test_tile_constant"}> ({
  ^bb0(%arg0: tensor<5x5x1x32xf32>):
    %0 = "onnx.Constant"() {value = dense<[5, 5, 16, 2]> : tensor<4xi64>} : () -> tensor<4xi64>
    %1 = "onnx.Tile"(%arg0, %0) : (tensor<5x5x1x32xf32>, tensor<4xi64>) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

