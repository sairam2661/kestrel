"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xf32>, tensor<i64>) -> tensor<*xf32>, sym_name = "topk_default_axis_one"}> ({
  ^bb0(%arg0: tensor<3x4x5xf32>, %arg1: tensor<i64>):
    %0:2 = "onnx.TopK"(%arg0, %arg1) {axis = 1 : si64, largest = 1 : si64, sorted = 1 : si64} : (tensor<3x4x5xf32>, tensor<i64>) -> (tensor<*xf32>, tensor<*xi64>)
    "onnx.Return"(%0#0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

