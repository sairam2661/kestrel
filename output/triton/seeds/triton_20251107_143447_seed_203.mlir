"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_chain"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_trapping}> : (i32, i32) -> i32
      %1 = "arith.addi"(%0, %arg0) <{overflowFlags = #arith_overflow_trapping}> : (i32, i32) -> i32
      %2 = "arith.divsi"(%1, %arg1) <{overflowFlags = #arith_overflow_trapping}> : (i32, i32) -> i32
      %3 = "arith.remsi"(%1, %arg1) <{overflowFlags = #arith_overflow_trapping}> : (i32, i32) -> i32
      %4 = "arith.select"(%arg0, %2, %3) <{predicate = 3 : i64}> : (i32, i32, i32) -> i32
      "tt.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()