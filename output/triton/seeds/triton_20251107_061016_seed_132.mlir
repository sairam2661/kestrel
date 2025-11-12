"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3:4 = "scf.for"(%0, %arg0, %1, %0, %0, %0, %0) ({
    ^bb0(%arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32):
      %4 = "arith.addi"(%arg3, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5 = "arith.cmpi"(%arg1, %4) <{predicate = 0 : i64}> : (i32, i32) -> i1
      scf.if %5 : () -> ()  ^bb1(%arg5: i32): %6 = "arith.subi"(%arg1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32 scf.yield %6 : i32 ^bb2: scf.yield %4 : i32 scf.yield %arg2, %arg5, %arg4 : i32, i32, i32
    }) : (i32, i32, i32, i32, i32, i32, i32) -> (i32, i32, i32)
    %7 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %8 = "tt.make_range"(%7) : (i32) -> tensor<2xi32>
    %9 = "tt.reduce"(%8) ({
    ^bb0(%arg6: i32, %arg7: i32):
      %10 = "arith.addi"(%arg6, %arg7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      scf.yield %10 : i32
    }) : (tensor<2xi32>) -> i32
    "tt.return"(%9) : (i32) -> ()
  }) : () -> ()
}) : () -> ()