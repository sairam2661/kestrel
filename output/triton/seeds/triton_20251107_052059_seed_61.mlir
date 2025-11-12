"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %4 = "arith.divsi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.remsi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.subi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.xori"(%6, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "arith.constant"() <{value = 12 : i32}> : () -> i32
    %9 = "arith.cmpi"(%7, %8) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %10 = "arith.select"(%9, %8, %7) <{}> : (i1, i32, i32) -> i32
    "tt.return"(%10) : (i32) -> ()
  }) : (i32, i32) -> i32
}) : () -> ()