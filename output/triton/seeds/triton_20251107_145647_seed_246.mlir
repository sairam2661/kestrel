"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_logic", sym_visibility = "public"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %3 = "arith.cmpi"(%arg0, %arg1, "sgt") : (i32, i32) -> i1
      %4 = "arith.select"(%3, %0, %1) : (i1, i32, i32) -> i32
      %5 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %6 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
      %7 = "arith.divsi"(%arg0, %arg1) : (i32, i32) -> i32
      %8 = "arith.remsi"(%arg0, %arg1) : (i32, i32) -> i32
      %9 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
      %10 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
      "tt.return"(%10) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()