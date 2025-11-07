"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x3x2xf32>) -> tensor<*xi64>, sym_name = "test_shape"}> ({
  ^bb0(%arg0: tensor<?x3x2xf32>):
    %0 = "onnx.Shape"(%arg0) {start = 0 : si64} : (tensor<?x3x2xf32>) -> tensor<*xi64>
    "onnx.Return"(%0) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

