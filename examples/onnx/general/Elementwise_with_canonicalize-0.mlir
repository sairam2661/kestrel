"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x4x5xf32>, tensor<1x?x1xf32>) -> tensor<?x4x5xi1>, sym_name = "test_binary_elementwise_op_template_unknown_dims"}> ({
  ^bb0(%arg0: tensor<?x4x5xf32>, %arg1: tensor<1x?x1xf32>):
    %0 = "onnx.Less"(%arg0, %arg1) : (tensor<?x4x5xf32>, tensor<1x?x1xf32>) -> tensor<?x4x5xi1>
    "func.return"(%0) : (tensor<?x4x5xi1>) -> ()
  }) : () -> ()
}) : () -> ()

