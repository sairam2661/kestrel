"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_combinations"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.divsi"(%3, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.select"(%4, %arg1, %arg0) <{predicate = 4 : i64}> : (i32, i32, i32) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()