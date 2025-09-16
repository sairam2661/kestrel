"builtin.module"() ({
  "func.func"() <{function_type = (memref<*xf32>, index, index, index, index) -> (), sym_name = "speculate_memref_dim_unknown_rank_unknown_dim"}> ({
  ^bb0(%arg18: memref<*xf32>, %arg19: index, %arg20: index, %arg21: index, %arg22: index):
    "scf.for"(%arg20, %arg21, %arg22) ({
    ^bb0(%arg23: index):
      %5 = "memref.dim"(%arg18, %arg19) : (memref<*xf32>, index) -> index
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (memref<?x?x?x?xf32>, index, index, index, index) -> (), sym_name = "speculate_memref_dim_known_rank_unknown_dim"}> ({
  ^bb0(%arg12: memref<?x?x?x?xf32>, %arg13: index, %arg14: index, %arg15: index, %arg16: index):
    "scf.for"(%arg14, %arg15, %arg16) ({
    ^bb0(%arg17: index):
      %4 = "memref.dim"(%arg12, %arg13) : (memref<?x?x?x?xf32>, index) -> index
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (memref<*xf32>, index, index, index, index) -> (), sym_name = "speculate_memref_dim_unknown_rank_known_dim"}> ({
  ^bb0(%arg6: memref<*xf32>, %arg7: index, %arg8: index, %arg9: index, %arg10: index):
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    "scf.for"(%arg8, %arg9, %arg10) ({
    ^bb0(%arg11: index):
      %3 = "memref.dim"(%arg6, %2) : (memref<*xf32>, index) -> index
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (memref<?x?x?x?xf32>, index, index, index, index) -> (), sym_name = "speculate_memref_dim_known_rank_known_dim_inbounds"}> ({
  ^bb0(%arg0: memref<?x?x?x?xf32>, %arg1: index, %arg2: index, %arg3: index, %arg4: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    "scf.for"(%arg2, %arg3, %arg4) ({
    ^bb0(%arg5: index):
      %1 = "memref.dim"(%arg0, %0) : (memref<?x?x?x?xf32>, index) -> index
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

