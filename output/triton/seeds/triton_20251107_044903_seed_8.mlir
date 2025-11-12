"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.mul"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.divsi"(%arg2, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%arg0, %arg2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %5 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %7 = "arith.select"(%4, %6, %5) : (i1, i32, i32) -> i32
    %8 = "arith.addi"(%arg0, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "arith.muli"(%8, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "arith.remsi"(%arg1, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "arith.xori"(%arg2, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "tt.return"(%11) : (i32) -> i32
  }) : () -> ()
}) : () -> ()