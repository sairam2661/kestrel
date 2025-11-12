"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "nested_loops_multireturn", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %5 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %6 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %7 = "scf.for"(%4, %5, %6, %arg3) ({
      ^bb0(%arg4: i32, %arg5: i32):
        %8 = "arith.addi"(%arg5, %arg4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%arg3, %8) : (i32, i32) -> ()
      }) : (i32, i32, i32, i32) -> (i32, i32)
      %9 = "arith.addi"(%arg3, %7#1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%arg2, %9) : (i32, i32) -> ()
    }) : (i32, i32, i32, i32) -> (i32, i32)
    "tt.return"(%3#0, %3#1) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()