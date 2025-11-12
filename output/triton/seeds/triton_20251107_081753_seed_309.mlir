"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i1) -> (i32, i1), sym_name = "complex_control_flow", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i1):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 1 : i1}> : () -> i1

    %4:2 = "scf.for"(%0, %1, %2, %arg0, %arg1) ({
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i1):
      %5 = "arith.addi"(%arg3, %2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %6 = "arith.xori"(%arg4, %3) : (i1, i1) -> i1
      %7 = "arith.cmpi"(%arg2, %5) <{predicate = 1 : i64}> : (i32, i32) -> i1
      %8 = "scf.if"(%7) ({
      ^bb0(%arg5: i1):
        %9 = "arith.constant"() <{value = 2 : i32}> : () -> i32
        %10 = "arith.addi"(%arg3, %9) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        "scf.yield"(%10, %6) : (i32, i1) -> ()
      }) {
      } : (i1) -> (i32, i1)
      "scf.yield"(%8#0, %8#1) : (i32, i1) -> ()
    }) : (i32, i32, i1, i32, i1) -> (i32, i1)

    "tt.return"(%4#0, %4#1) : (i32, i1) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "nested_loops", sym_visibility = "public"}> ({
  ^bb0(%arg2: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32

    %3:3 = "scf.for"(%0, %1, %2, %0, %0, %0) ({
    ^bb0(%arg3: i32, %arg4: i32, %arg5: i32):
      %6:3 = "scf.for"(%0, %1, %2, %arg4, %arg5, %arg3) ({
      ^bb0(%arg6: i32, %arg7: i32, %arg8: i32):
        %9 = "arith.addi"(%arg7, %2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        %10 = "arith.addi"(%arg8, %2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        %11 = "arith.addi"(%arg6, %2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        "scf.yield"(%9, %10, %11) : (i32, i32, i32) -> ()
      }) : (i32, i32, i1, i32, i32, i32) -> (i32, i32, i32)
      "scf.yield"(%6#0, %6#1, %6#2) : (i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32, i32) -> (i32, i32, i32)

    "tt.return"(%3#0) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()