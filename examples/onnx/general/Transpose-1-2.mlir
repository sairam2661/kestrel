"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?x?xf32>) -> tensor<*xf32>, sym_name = "test_transpose_dyn"}> ({
  ^bb0(%arg0: tensor<?x?x?x?xf32>):
    %0 = "onnx.Transpose"(%arg0) {perm = [0, 2, 3, 1]} : (tensor<?x?x?x?xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

