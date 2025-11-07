"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x32x64xf32>) -> (tensor<*xf32>, tensor<*xf32>), sym_name = "test_splitv11_variable", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<16x32x64xf32>):
    %0:2 = "onnx.SplitV11"(%arg0) {axis = 1 : si64, split = [2, 30]} : (tensor<16x32x64xf32>) -> (tensor<*xf32>, tensor<*xf32>)
    "func.return"(%0#0, %0#1) : (tensor<*xf32>, tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

