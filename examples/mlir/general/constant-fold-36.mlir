"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "custom_insertion_position"}> ({
    "test.one_region_op"() ({
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1 = "arith.addi"(%0, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "foo.yield"(%1) : (i32) -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

