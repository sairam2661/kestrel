"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "use_before_def"}> ({
    "test.graph_region"() ({
      %0 = "arith.addi"(%1, %2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "foo.yield"(%0) : (i32) -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

