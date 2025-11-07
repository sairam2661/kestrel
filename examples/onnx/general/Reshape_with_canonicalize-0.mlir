"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x10xf32>, tensor<4xi64>) -> tensor<*xf32>, sym_name = "test_reshape", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?x10xf32>, %arg1: tensor<4xi64>):
    %0 = "onnx.Reshape"(%arg0, %arg1) {allowzero = 0 : si64} : (tensor<?x10xf32>, tensor<4xi64>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

