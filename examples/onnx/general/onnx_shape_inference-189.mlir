"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> tensor<*xi64>, sym_name = "test_size"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "onnx.Size"(%arg0) : (tensor<*xf32>) -> tensor<*xi64>
    "onnx.Return"(%0) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

