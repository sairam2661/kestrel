"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_loop_and_reduce"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %5:4 = "scf.for"(%0, %arg0, %2, %3, %3, %3, %3) ({
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32):
      %6 = "arith.addi"(%arg3, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %7 = "arith.remsi"(%arg4, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %8 = "arith.cmpi"(%6, %arg5) <{predicate = 3 : i64}> : (i32, i32) -> i1
      %9 = "arith.select"(%8, %7, %arg4) : (i1, i32, i32) -> i32
      %10 = "arith.muli"(%arg2, %arg5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %11 = "arith.addi"(%arg2, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%10, %9, %6, %11) : (i32, i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32, i32, i32) -> (i32, i32, i32, i32)
    %12 = "tt.reduce"() ({
    ^bb0(%arg7: i32, %arg8: i32, %arg9: i32):
      %13 = "arith.addi"(%arg7, %arg8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %14 = "arith.addi"(%arg8, %arg9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%13, %14) : (i32, i32) -> ()
    }) : (i32, i32) -> (i32, i32)
    "tt.return"(%12#0, %12#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()