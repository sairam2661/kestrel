"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?xf32>, memref<?x?xf32>) -> (), sym_name = "map_scatter_memref_dynamic"}> ({
  ^bb0(%arg0: memref<?x?xf32>, %arg1: memref<?x?xf32>):
    "iree_linalg_ext.map_scatter"(%arg0, %arg1) ({
    ^bb0(%arg2: index, %arg3: index):
      %0 = "arith.constant"() <{value = true}> : () -> i1
      "iree_linalg_ext.yield"(%arg2, %arg3, %0) : (index, index, i1) -> ()
    }) : (memref<?x?xf32>, memref<?x?xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

