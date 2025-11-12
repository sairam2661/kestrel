"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}>: (i32, i32) -> i32
    %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}>: (i32, i32) -> i32
    %2 = "arith.cmpi"(%0, %1) <{predicate = 7 : i64}> : (i32, i32) -> i1
    %3 = "arith.select"(%2, %0, %1) : (i1, i32, i32) -> i32
    %4 = "secret.conceal"(%3) : (i32) -> !secret
    %5 = "func.call"() <{callee = @another_func, operands = [], results = [i32], attributes = {}}>: () -> i32
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflow_mode}>: (i32, i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i32, sym_name = "another_func"}> ({
  ^bb0():
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}): () -> ()