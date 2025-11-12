"builtin.module"() ({
  "func.func"() <{function_type = (i32, i1) -> (i32, i1), sym_name = "complex_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i1):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.subi"(%3, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %6 = "arith.cmpi"(%4, %5) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %7 = "arith.select"(%arg1, %6, %6) : (i1, i1, i1) -> i1
    "func.return"(%4, %7) : (i32, i1) -> ()
  }) : () -> ()
}) : () -> ()