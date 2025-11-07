"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xi64>, tensor<1x1xi64>) -> tensor<?x?xi64>, sym_name = "test_tile_input_dim_1"}> ({
  ^bb0(%arg0: tensor<?x?xi64>, %arg1: tensor<1x1xi64>):
    %0 = "onnx.Dim"(%arg0) {axis = 0 : si64} : (tensor<?x?xi64>) -> tensor<1xi64>
    %1 = "onnx.Dim"(%arg0) {axis = 1 : si64} : (tensor<?x?xi64>) -> tensor<1xi64>
    %2 = "onnx.Concat"(%0, %1) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %3 = "onnx.Tile"(%arg1, %2) : (tensor<1x1xi64>, tensor<2xi64>) -> tensor<?x?xi64>
    "onnx.Return"(%3) : (tensor<?x?xi64>) -> ()
  }) : () -> ()
}) : () -> ()

