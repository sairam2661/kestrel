"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xf32>, tensor<1xi64>) -> tensor<*xf32>, sym_name = "test_tile2"}> ({
  ^bb0(%arg0: tensor<8xf32>, %arg1: tensor<1xi64>):
    %0 = "onnx.Tile"(%arg0, %arg1) : (tensor<8xf32>, tensor<1xi64>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

