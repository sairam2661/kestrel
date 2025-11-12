"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.divsi"(%1, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.remsi"(%1, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%2, %3) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "arith.select"(%4, %5, %0) : (i1, i32, i32) -> i32
    %7 = "arith.addi"(%arg0, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "arith.subi"(%7, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "arith.xori"(%8, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%9) : (i32) -> ()
  }) : () -> ()
}) : () -> ()