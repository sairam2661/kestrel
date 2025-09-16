"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "warp_scf_for_swap_no_yield"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 128 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    "gpu.warp_execute_on_lane_0"(%arg0) <{warp_size = 32 : i64}> ({
      "scf.for"(%2, %0, %1) ({
      ^bb0(%arg1: index):
        "some_op"() : () -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "gpu.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

