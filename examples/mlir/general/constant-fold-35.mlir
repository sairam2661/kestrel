"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "nested_isolated_region"}> ({
    "builtin.module"() ({
      "func.func"() <{function_type = () -> (), sym_name = "isolated_op"}> ({
        %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        %3 = "arith.addi"(%2, %2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "foo.yield"(%3) : (i32) -> ()
      }) : () -> ()
    }) : () -> ()
    "foo.unknown_region"() ({
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1 = "arith.addi"(%0, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "foo.yield"(%1) : (i32) -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

