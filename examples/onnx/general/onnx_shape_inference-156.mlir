"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi64>, tensor<2x1x?xi64>) -> tensor<?x?x?xi64>, sym_name = "test_tile_mixed_constant"}> ({
  ^bb0(%arg0: tensor<?xi64>, %arg1: tensor<2x1x?xi64>):
    %0 = "onnx.Constant"() {value = dense<3> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Dim"(%arg0) {axis = 0 : si64} : (tensor<?xi64>) -> tensor<1xi64>
    %2 = "onnx.Concat"(%0, %1, %0) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %3 = "onnx.Tile"(%arg1, %2) : (tensor<2x1x?xi64>, tensor<3xi64>) -> tensor<?x?x?xi64>
    "func.return"(%3) : (tensor<?x?x?xi64>) -> ()
  }) : () -> ()
}) : () -> ()

