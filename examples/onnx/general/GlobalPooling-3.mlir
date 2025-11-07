"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x?x?x5xf32>) -> tensor<1x?x1x1xf32>, sym_name = "test_global_max_pool_dyn_dims"}> ({
  ^bb0(%arg0: tensor<1x?x?x5xf32>):
    %0 = "onnx.GlobalMaxPool"(%arg0) : (tensor<1x?x?x5xf32>) -> tensor<1x?x1x1xf32>
    "func.return"(%0) : (tensor<1x?x1x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

