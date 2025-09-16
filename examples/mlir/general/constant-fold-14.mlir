"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (i32, i32), sym_name = "simple_subi"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "arith.subi"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %4 = "arith.subi"(%arg0, %2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "func.return"(%3, %4) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

