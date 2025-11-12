"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %2 = "arith.divsi"(%1, %arg0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %3 = "arith.remsi"(%1, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %4 = "arith.select"(%3, %2, %0) <{cond = "eq"}> : (i32, i32, i32) -> i32
    "scf.if"(%4) ({
      ^bb0(%arg2: i32):
        %5 = "arith.addi"(%arg2, %arg0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
        "scf.yield"() : () -> ()
    }) : (i32) -> () 
    "tt.return"(%4) : (i32) -> ()
  }) : (i32, i32) -> (i32)
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32} : () -> ()