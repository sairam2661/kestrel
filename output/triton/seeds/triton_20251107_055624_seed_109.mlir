"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (!tt_ptr, i32, f32) -> (!tt_ptr, i32, f32), sym_name = "complex_interactions"}> ({
  ^bb0(%arg0: !tt_ptr, %arg1: i32, %arg2: f32):
    %cst = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %cst1 = "arith.constant"() <{value = 42.0 : f32}> : () -> f32
    %0 = "scf.if"(%cst) ({
    ^bb0:
      %1 = "arith.addi"(%arg1, %cst) : (i32, i32) -> i32
      "scf.yield"(%1) : (i32) -> ()
    }) : (i32) -> (i32)
    %2 = "scf.if"(%0) ({
    ^bb0:
      %3 = "arith.addi"(%0, %cst) : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (i32) -> (i32)
    %4 = "scf.if"(%2) ({
    ^bb0:
      %5 = "arith.addi"(%2, %cst) : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> (i32)
    %6 = "arith.xori"(%arg1, %cst) : (i32, i32) -> i32
    %7 = "arith.remsi"(%arg1, %cst) : (i32, i32) -> i32
    %8 = "arith.addf"(%arg2, %cst1) : (f32, f32) -> f32
    "tt.return"(%arg0, %8, %7) : (!tt_ptr, f32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()