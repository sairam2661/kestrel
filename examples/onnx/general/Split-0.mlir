"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x32x64xf32>) -> (tensor<*xf32>, tensor<*xf32>), sym_name = "test_split_equal", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<16x32x64xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.Split"(%arg0, %0) {axis = 0 : si64} : (tensor<16x32x64xf32>, none) -> (tensor<*xf32>, tensor<*xf32>)
    "func.return"(%1#0, %1#1) : (tensor<*xf32>, tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

