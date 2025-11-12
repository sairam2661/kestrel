"builtin.module"() ({
  "tt.func"() <{function_type = (i64, i32) -> (i64), sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i64, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflowFlagsSigned}> : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.divsi"(%1, %2) <{signedness = #arithSigned}> : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %5 = "arith.select"(%3, %4, %0) <{predicate = "slt"}> : (i32, i32, i32) -> i32
    %6 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %7 = "arith.cmpi"(%5, %6, "slt") : (i32, i32) -> i1
    %8 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %9 = "arith.remsi"(%arg0, %8) <{signedness = #arithSigned}> : (i64, i64) -> i64
    %10 = "arith.muli"(%arg0, %9) <{overflowFlags = #arith_overflowFlagsSigned}> : (i64, i64) -> i64
    %11 = "arith.xori"(%arg0, %10) <{overflowFlags = #arith_overflowFlagsSigned}> : (i64, i64) -> i64
    "tt.return"(%11) : (i64) -> ()
  }) : () -> (i64)
}) : () -> ()