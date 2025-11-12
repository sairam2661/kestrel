"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, tensor<64xf32>) -> tensor<64xf32>, sym_name = "no_vectorize_map_scatter_dynamic"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<64xf32>):
    %0 = "iree_linalg_ext.map_scatter"(%arg0, %arg1) ({
    ^bb0(%arg2: index):
      %1 = "arith.constant"() <{value = true}> : () -> i1
      "iree_linalg_ext.yield"(%arg2, %1) : (index, i1) -> ()
    }) : (tensor<?xf32>, tensor<64xf32>) -> tensor<64xf32>
    "func.return"(%0) : (tensor<64xf32>) -> ()
  }) : () -> ()
}) : () -> ()

