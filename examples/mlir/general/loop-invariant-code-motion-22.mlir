"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_invariant_nested_loop"}> ({
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    "test.graph_loop"() ({
      %1 = "arith.addi"(%0, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %2 = "arith.addi"(%1, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "test.graph_loop"() ({
      ^bb0(%arg0: i32):
        %3 = "arith.subi"(%arg0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "test.region_yield"(%3) : (i32) -> ()
      }) : () -> ()
      "test.region_yield"(%2) : (i32) -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

