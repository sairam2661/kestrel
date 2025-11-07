"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x3x4xf32>) -> tensor<*xf32>, sym_name = "test_erf"}> ({
  ^bb0(%arg0: tensor<1x2x3x4xf32>):
    %0 = "onnx.Erf"(%arg0) : (tensor<1x2x3x4xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

