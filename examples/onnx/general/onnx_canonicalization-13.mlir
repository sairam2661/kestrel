"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x5x5x1xf32>, tensor<?x5x5x2xf32>) -> tensor<?x5x5x3xf32>, sym_name = "test_transpose_concat_reversed"}> ({
  ^bb0(%arg0: tensor<?x5x5x1xf32>, %arg1: tensor<?x5x5x2xf32>):
    %0 = "onnx.Transpose"(%arg0) {perm = [0, 3, 1, 2]} : (tensor<?x5x5x1xf32>) -> tensor<?x1x5x5xf32>
    %1 = "onnx.Transpose"(%arg1) {perm = [0, 3, 1, 2]} : (tensor<?x5x5x2xf32>) -> tensor<?x2x5x5xf32>
    %2 = "onnx.Concat"(%0, %1) {axis = 1 : si64} : (tensor<?x1x5x5xf32>, tensor<?x2x5x5xf32>) -> tensor<?x3x5x5xf32>
    %3 = "onnx.Transpose"(%2) {perm = [0, 2, 3, 1]} : (tensor<?x3x5x5xf32>) -> tensor<?x5x5x3xf32>
    "onnx.Return"(%3) : (tensor<?x5x5x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

