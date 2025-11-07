"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>, sym_name = "softmax_matmul"}> ({
  ^bb0(%arg0: tensor<?x?x?x?xf32>):
    %0 = "onnx.Transpose"(%arg0) {perm = [0, 1, 3, 2]} : (tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>
    %1 = "onnx.Softmax"(%arg0) {axis = 3 : si64} : (tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>
    %2 = "onnx.MatMul"(%0, %1) {axis = 3 : si64} : (tensor<?x?x?x?xf32>, tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>
    "onnx.Return"(%2) : (tensor<?x?x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

