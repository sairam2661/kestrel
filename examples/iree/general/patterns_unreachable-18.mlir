"builtin.module"() ({
  "util.func"() <{function_type = () -> (), sym_name = "removeOpsBeforeUnreachable"}> ({
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "util.unreachable"() : () -> ()
  }) : () -> ()
}) : () -> ()

