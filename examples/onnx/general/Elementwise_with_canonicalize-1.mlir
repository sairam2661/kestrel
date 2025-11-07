"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x4x1xf32>, tensor<?x?x5xf32>, tensor<?x1x5xf32>) -> tensor<?x4x5xf32>, sym_name = "test_variadic_elementwise_op_template_unknown_dims"}> ({
  ^bb0(%arg0: tensor<?x4x1xf32>, %arg1: tensor<?x?x5xf32>, %arg2: tensor<?x1x5xf32>):
    %0 = "onnx.Max"(%arg0, %arg1, %arg2) : (tensor<?x4x1xf32>, tensor<?x?x5xf32>, tensor<?x1x5xf32>) -> tensor<?x4x5xf32>
    "func.return"(%0) : (tensor<?x4x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

