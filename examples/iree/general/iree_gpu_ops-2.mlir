"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "multi_input_barrier_region"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "iree_gpu.barrier_region"(%arg0, %arg1) ({
    ^bb0(%arg2: index, %arg3: index):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      "iree_gpu.yield"(%1) : (index) -> ()
    }) : (index, index) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

