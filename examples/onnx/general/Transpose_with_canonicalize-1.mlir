"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1x1x384xf32>) -> tensor<*xf32>, sym_name = "test_transpose_lowered_to_a_view_op_inv"}> ({
  ^bb0(%arg0: tensor<?x1x1x384xf32>):
    %0 = "onnx.Transpose"(%arg0) {perm = [3, 0, 1, 2]} : (tensor<?x1x1x384xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

