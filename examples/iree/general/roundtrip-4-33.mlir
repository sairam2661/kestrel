"builtin.module"() ({
  "func.func"() <{function_type = (memref<16xf32>, memref<16xf32>) -> (), sym_name = "map_scatter_memref_static"}> ({
  ^bb0(%arg0: memref<16xf32>, %arg1: memref<16xf32>):
    "iree_linalg_ext.map_scatter"(%arg0, %arg1) ({
    ^bb0(%arg2: index):
      %0 = "arith.constant"() <{value = true}> : () -> i1
      "iree_linalg_ext.yield"(%arg2, %0) : (index, i1) -> ()
    }) : (memref<16xf32>, memref<16xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

