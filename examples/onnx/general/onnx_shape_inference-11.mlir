"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x1x32xf32>) -> tensor<*xf32>, sym_name = "test_transpose"}> ({
  ^bb0(%arg0: tensor<5x5x1x32xf32>):
    %0 = "onnx.Transpose"(%arg0) {perm = [2, 0, 3, 1]} : (tensor<5x5x1x32xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

