"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x768xf32>, tensor<1x1x1xf32>) -> tensor<?x?x768xf32>, sym_name = "roberta_partial_simd_1dim_tensor3"}> ({
  ^bb0(%arg0: tensor<?x?x768xf32>, %arg1: tensor<1x1x1xf32>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<?x?x768xf32>, tensor<1x1x1xf32>) -> tensor<?x?x768xf32>
    "func.return"(%0) : (tensor<?x?x768xf32>) -> ()
  }) : () -> ()
}) : () -> ()

