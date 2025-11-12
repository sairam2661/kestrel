"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.remsi"(%arg0, %arg1) : (i32, i32) -> i32
    %5 = "arith.cmpi"(%arg0, %arg1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %6 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %7 = "arith.select"(%5, %1, %2) : (i1, i32, i32) -> i32
    %8 = "arith.addi"(%7, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "arith.addi"(%8, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "arith.addi"(%9, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%10) : (i32) -> ()
  }) : () -> i32
}) : () -> ()