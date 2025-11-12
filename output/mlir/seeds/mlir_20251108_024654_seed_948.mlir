"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (i32), sym_name = "unusual_integer_operations"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0, "eq") : (i32, i32) -> i1
    %2 = "arith.select"(%1, %0, %arg0) : (i1, i32, i32) -> i32
    %3 = "arith.addi"(%2, %0) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %0, "gt") : (i32, i32) -> i1
    %5 = "arith.select"(%4, %3, %0) : (i1, i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()