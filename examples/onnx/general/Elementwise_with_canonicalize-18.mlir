"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x95x7xf32>, tensor<?x?x95x7xf32>) -> tensor<?x?x95x7xf32>, sym_name = "roberta_partial_simd_2dim_not_0_mod_vl"}> ({
  ^bb0(%arg0: tensor<?x?x95x7xf32>, %arg1: tensor<?x?x95x7xf32>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<?x?x95x7xf32>, tensor<?x?x95x7xf32>) -> tensor<?x?x95x7xf32>
    "func.return"(%0) : (tensor<?x?x95x7xf32>) -> ()
  }) : () -> ()
}) : () -> ()

