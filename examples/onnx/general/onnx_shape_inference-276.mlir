"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> tensor<*xf32>, sym_name = "test_clipv6"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "onnx.ClipV6"(%arg0) {max = 6.000000e+00 : f32, min = 0.000000e+00 : f32} : (tensor<*xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

