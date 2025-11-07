"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> (), sym_name = "test_squeezeV11"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "onnx.SqueezeV11"(%arg0) {axes = [1]} : (tensor<*xf32>) -> tensor<*xf32>
    "onnx.Return"() : () -> ()
  }) : () -> ()
}) : () -> ()

