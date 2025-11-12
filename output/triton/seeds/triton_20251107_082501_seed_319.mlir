"builtin.module"() ({
  "tt.func"() <{function_type = (!ttptr16, !tt_ptr32) -> (), sym_name = "complex_op", sym_visibility = "public"}> ({
  ^bb0(%arg0: !tt_ptr16, %arg1: !tt_ptr32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.cmpi"(%0, %1, "eq") : (i32, i32, i32) -> i1
    %3 = "arith.select"(%2, %arg0, %arg1) : (i1, !tt_ptr16, !tt_ptr32) -> !tt_ptr32
    "tt.return"(%3) : (!tt_ptr32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 8 : i32, "ttg.num-warps" = 32 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 64 : i32} : () -> ()