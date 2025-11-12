"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>, sym_name = "convert_identity_map_scatter_into_copy", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>):
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "iree_linalg_ext.map_scatter"(%arg0, %arg1) ({
    ^bb0(%arg2: index, %arg3: index):
      "iree_linalg_ext.yield"(%arg2, %arg3, %0) : (index, index, i1) -> ()
    }) : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    "func.return"(%1) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

