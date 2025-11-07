"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2x2xf32>) -> tensor<*xf32>, sym_name = "test_reducesumV11", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<3x2x2xf32>):
    %0 = "onnx.ReduceSumV11"(%arg0) {axes = [1], keepdims = 0 : si64} : (tensor<3x2x2xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

