"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x96x8xf32>, tensor<?x?x96x8xf32>) -> tensor<?x?x96x8xf32>, sym_name = "roberta_partial_simd_2dim_v1"}> ({
  ^bb0(%arg0: tensor<?x?x96x8xf32>, %arg1: tensor<?x?x96x8xf32>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<?x?x96x8xf32>, tensor<?x?x96x8xf32>) -> tensor<?x?x96x8xf32>
    "func.return"(%0) : (tensor<?x?x96x8xf32>) -> ()
  }) : () -> ()
}) : () -> ()

