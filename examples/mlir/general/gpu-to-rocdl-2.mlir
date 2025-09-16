"builtin.module"() ({
  "gpu.module"() <{sym_name = "test_module"}> ({
    "func.func"() <{function_type = (index) -> index, sym_name = "gpu_index_comp"}> ({
    ^bb0(%arg0: index):
      %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      "func.return"(%0) : (index) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

