"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_invariant_cycle_not_hoisted"}> ({
    "test.graph_loop"() ({
      %0 = "test.a"(%1) : (i32) -> i32
      %1 = "test.b"(%0) : (i32) -> i32
      "test.region_yield"(%0) : (i32) -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

