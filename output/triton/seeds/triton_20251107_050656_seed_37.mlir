"builtin.module"() ({
  "tt.func"() <{function_type = (i64, i64) -> (i64), sym_name = "nested_loops_complex"}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "arith.constant"() <{value = 10 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 5 : i64}> : () -> i64
    %2:2 = "scf.for"(%arg0, %arg1, %0) ({
    ^bb0(%arg2: i64, %arg3: i64, %arg4: i64):
      %3:2 = "scf.for"(%arg3, %arg1, %1) ({
      ^bb0(%arg5: i64, %arg6: i64, %arg7: i64):
        %8 = "arith.addi"(%arg5, %arg6) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
        %9 = "arith.select"(%arg3, %8, %arg5) : (i1, i64, i64) -> i64
        %10 = "arith.remsi"(%9, %0) : (i64, i64) -> i64
        "scf.yield"(%10, %arg7) : (i64, i64) -> ()
      }) : (i64, i64, i64) -> (i64, i64)
      "scf.yield"(%3#0, %arg4) : (i64, i64) -> ()
    }) : (i64, i64, i64) -> (i64, i64)
    "tt.return"(%2#0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()