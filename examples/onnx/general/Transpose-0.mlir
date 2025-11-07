"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x20x30x40xf32>) -> tensor<*xf32>, sym_name = "test_transpose", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<10x20x30x40xf32>):
    %0 = "onnx.Transpose"(%arg0) : (tensor<10x20x30x40xf32>) -> tensor<*xf32>
    %1 = "onnx.Transpose"(%0) {perm = [0, 3, 1, 2]} : (tensor<*xf32>) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

