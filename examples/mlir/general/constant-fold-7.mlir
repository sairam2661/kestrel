"builtin.module"() ({
  "func.func"() <{function_type = (i1, i32) -> (i1, i32), sym_name = "simple_and"}> ({
  ^bb0(%arg0: i1, %arg1: i32):
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 31 : i32}> : () -> i32
    %3 = "arith.andi"(%arg0, %0) : (i1, i1) -> i1
    %4 = "arith.andi"(%arg1, %1) : (i32, i32) -> i32
    %5 = "arith.andi"(%4, %2) : (i32, i32) -> i32
    "func.return"(%3, %5) : (i1, i32) -> ()
  }) : () -> ()
}) : () -> ()

