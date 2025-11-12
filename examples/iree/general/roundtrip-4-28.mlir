"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>, sym_name = "map_scatter_tensor_dynamic"}> ({
  ^bb0(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>):
    %0 = "iree_linalg_ext.map_scatter"(%arg0, %arg1) ({
    ^bb0(%arg2: index, %arg3: index):
      %1 = "arith.constant"() <{value = true}> : () -> i1
      "iree_linalg_ext.yield"(%arg2, %arg3, %1) : (index, index, i1) -> ()
    }) : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    "func.return"(%0) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

