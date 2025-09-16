"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_invariant_backedge"}> ({
    "test.graph_loop"() ({
      %0 = "arith.addi"(%2, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %1 = "arith.addi"(%2, %2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      "test.region_yield"(%0) : (i32) -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

