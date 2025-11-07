"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x32x32xf32>) -> tensor<*xf32>, sym_name = "test_global_maxpool"}> ({
  ^bb0(%arg0: tensor<5x5x32x32xf32>):
    %0 = "onnx.GlobalMaxPool"(%arg0) : (tensor<5x5x32x32xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

