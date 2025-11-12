"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "nested_loops_with_conditions", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3:2 = "scf.for"(%0, %arg0, %1, %0, %0) ({
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32):
      %4 = "arith.addi"(%arg2, %2) <{overflowFlags = #arith_overflow_mode}>: (i32, i32) -> i32
      %5 = "arith.cmpi"(%4, %arg1) <{predicate = 1 : i64}> : (i32, i32) -> i1
      scf.if %5, true, false : i1
      ^true:
        %6 = "arith.mul"(%arg3, %4) <{overflowFlags = #arith_overflow_mode}>: (i32, i32) -> i32
        "scf.yield"(%6, %arg3) : (i32, i32) -> ()
      ^false:
        %7 = "arith.div"(%arg3, %4) <{overflowFlags = #arith_overflow_mode}>: (i32, i32) -> i32
        "scf.yield"(%arg3, %7) : (i32, i32) -> ()
    }) : (i32, i32, i32, i32) -> (i32, i32)
    %8:2 = "scf.for"(%0, %arg0, %1, %0, %0) ({
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32):
      %4 = "arith.addi"(%arg2, %2) <{overflowFlags = #arith_overflow_mode}>: (i32, i32) -> i32
      %5 = "arith.cmpi"(%4, %arg1) <{predicate = 1 : i64}> : (i32, i32) -> i1
      scf.if %5, true, false : i1
      ^true:
        %6 = "arith.mul"(%arg3, %4) <{overflowFlags = #arith_overflow_mode}>: (i32, i32) -> i32
        "scf.yield"(%6, %arg3) : (i32, i32) -> ()
      ^false:
        %7 = "arith.div"(%arg3, %4) <{overflowFlags = #arith_overflow_mode}>: (i32, i32) -> i32
        "scf.yield"(%arg3, %7) : (i32, i32) -> ()
    }) : (i32, i32, i32, i32) -> (i32, i32)
    "tt.return"(%3#0, %8#0) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()