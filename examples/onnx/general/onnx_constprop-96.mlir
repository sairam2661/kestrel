"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x10xf32>) -> (tensor<2x5xf32>, tensor<2x5xf32>), sym_name = "test_split_axis_2"}> ({
  ^bb0(%arg0: tensor<2x10xf32>):
    %0 = "onnx.Constant"() {value = dense<5> : tensor<2xi64>} : () -> tensor<2xi64>
    %1:2 = "onnx.Split"(%arg0, %0) {axis = 1 : si64} : (tensor<2x10xf32>, tensor<2xi64>) -> (tensor<2x5xf32>, tensor<2x5xf32>)
    "onnx.Return"(%1#0, %1#1) : (tensor<2x5xf32>, tensor<2x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

