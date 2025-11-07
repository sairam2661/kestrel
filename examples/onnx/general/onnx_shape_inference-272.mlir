"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x20xf32>, tensor<10x30xf32>) -> (tensor<*xi64>, tensor<*xf32>), sym_name = "test_concatshapetranspose_1"}> ({
  ^bb0(%arg0: tensor<10x20xf32>, %arg1: tensor<10x30xf32>):
    %0:2 = "onnx.ConcatShapeTranspose"(%arg0, %arg1) {axis = 1 : si64, perm = [1, 0], start = 0 : si64} : (tensor<10x20xf32>, tensor<10x30xf32>) -> (tensor<*xi64>, tensor<*xf32>)
    "onnx.Return"(%0#0, %0#1) : (tensor<*xi64>, tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

