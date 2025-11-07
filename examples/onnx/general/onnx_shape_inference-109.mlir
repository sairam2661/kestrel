"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x32x64xf32>) -> tensor<*xf32>, sym_name = "test_splitv11_2"}> ({
  ^bb0(%arg0: tensor<16x32x64xf32>):
    %0:2 = "onnx.SplitV11"(%arg0) {axis = -2 : si64} : (tensor<16x32x64xf32>) -> (tensor<*xf32>, tensor<*xf32>)
    "onnx.Return"(%0#0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

