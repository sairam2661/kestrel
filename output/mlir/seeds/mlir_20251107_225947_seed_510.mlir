"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> i64, sym_name = "complex_types_and_calls"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 456 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addi"(%arg1, %1) : (i64, i64) -> i64
    %4 = "arith.muli"(%2, %3) : (i32, i64) -> i64
    "func.call"() <{callee = "@another_func", args = ["%4" : i64]}> : () -> i64
    "func.return"(%4) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i64) -> i64, sym_name = "another_func"}> ({
  ^bb0(%arg0: i64):
    %1 = "arith.constant"() <{value = 789 : i64}> : () -> i64
    %2 = "arith.subi"(%arg0, %1) : (i64, i64) -> i64
    "func.return"(%2) : (i64) -> ()
  }) : () -> ()
}) : () -> ()