"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_interaction"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.select"(%arg0, %arg1, %0) <{}> : (i32, i32, i32) -> i32
    %2 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflow_type}> : (i32, i32) -> i32
    %3 = "arith.subi"(%arg0, %1) <{overflowFlags = #arith_overflow_type}> : (i32, i32) -> i32
    %4 = "arith.xori"(%arg0, %1) <{}> : (i32, i32) -> i32
    %5 = "scf.if"(%1) ({
    ^bb0:
      "scf.yield"() : () -> ()
    }) {
    } : () -> ()
    "tt.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 2 : i32} : () -> ()