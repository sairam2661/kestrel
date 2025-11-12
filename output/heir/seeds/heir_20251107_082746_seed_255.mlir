"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.muli"(%3, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.subi"(%4, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.cmpi"(%5, %arg0) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %7 = "arith.select"(%6, %5, %0) : (i1, i32, i32) -> i32
    "func.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()