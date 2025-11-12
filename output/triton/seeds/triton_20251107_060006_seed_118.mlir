"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %1 = "arith.mulsi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      %2 = "arith.remsi"(%1, %0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      %3 = "arith.cmpi"(%2, %0, "eq") : (i32, i32, i32) -> i1
      %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %5 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %6 = "arith.select"(%3, %4, %5) : (i1, i32, i32) -> i32
      "tt.return"(%6) : (i32) -> ()
  }) : (i32, i32) -> i32
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "caller"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %1 = "tt.call"(%arg0, %0) <{callee = @complex_op}> : (i32, i32) -> i32
      "tt.return"(%1) : (i32) -> ()
  }) : (i32) -> i32
}) : () -> ()