"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>, tensor<10x30xf32>) -> (tensor<*xi64>, tensor<*xf32>), sym_name = "test_concatshapetranpose_2"}> ({
  ^bb0(%arg0: tensor<?x?xf32>, %arg1: tensor<10x30xf32>):
    %0:2 = "onnx.ConcatShapeTranspose"(%arg0, %arg1) {axis = 1 : si64, start = 0 : si64} : (tensor<?x?xf32>, tensor<10x30xf32>) -> (tensor<*xi64>, tensor<*xf32>)
    "onnx.Return"(%0#0, %0#1) : (tensor<*xi64>, tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

