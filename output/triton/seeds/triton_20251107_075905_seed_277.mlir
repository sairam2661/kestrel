"builtin.module"() ({
  "tt.func"() <{function_type = (i64, i64) -> (i64), sym_name = "complex_loop_and_reduce"}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 10 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %3:2 = "scf.for"(%2, %arg0, %1, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2) ({
    ^bb0(%arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64):
      %17 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      %18 = "arith.addi"(%arg3, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      %19 = "arith.addi"(%arg4, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      %20 = "arith.addi"(%arg5, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      %21 = "arith.addi"(%arg6, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      %22 = "arith.addi"(%arg7, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      %23 = "arith.addi"(%arg8, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      %24 = "arith.addi"(%arg9, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      %25 = "arith.addi"(%arg10, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      %26 = "arith.addi"(%arg11, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      %27 = "arith.addi"(%arg12, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      %28 = "arith.addi"(%arg13, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      %29 = "arith.addi"(%arg14, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      %30 = "arith.addi"(%arg15, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      %31 = "arith.addi"(%arg16, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      "scf.yield"(%17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31) : (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> ()
    }) : (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)
    %32 = "tt.reduce"(%3#0) <{axis = 0 : i64}> ({
    ^bb0(%arg17: i64, %arg18: i64):
      %33 = "arith.addi"(%arg17, %arg18) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      "tt.reduce.return"(%33) : (i64) -> ()
    }) : (i64) -> i64
    "tt.return"(%32) : (i64) -> ()
  }) : () -> ()
}) : () -> ()