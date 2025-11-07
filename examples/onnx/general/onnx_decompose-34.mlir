"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x20xf32>, tensor<?x30xf32>) -> (tensor<2xi64>, tensor<50x?xf32>), sym_name = "concat_fuse_0"}> ({
  ^bb0(%arg0: tensor<?x20xf32>, %arg1: tensor<?x30xf32>):
    %0 = "onnx.Concat"(%arg0, %arg1) {axis = 1 : si64} : (tensor<?x20xf32>, tensor<?x30xf32>) -> tensor<?x50xf32>
    %1 = "onnx.Transpose"(%0) {perm = [1, 0]} : (tensor<?x50xf32>) -> tensor<50x?xf32>
    %2 = "onnx.Shape"(%0) {start = 0 : si64} : (tensor<?x50xf32>) -> tensor<2xi64>
    "onnx.Return"(%2, %1) : (tensor<2xi64>, tensor<50x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

