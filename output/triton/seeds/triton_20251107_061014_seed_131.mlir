"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_nested_loops", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c10_i32 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %0:2 = "scf.for"(%c0_i32, %arg0, %c10_i32, %c0_i32, %c0_i32) ({
    ^bb0(%iv0: i32, %iv1: i32, %iv2: i32, %iv3: i32, %iv4: i32):
      %1 = "arith.addi"(%iv0, %c1_i32) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %2 = "arith.cmpi"(%1, %arg1) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %3 = "arith.select"(%2, %1, %arg1) : (i1, i32, i32) -> i32
      %4 = "arith.cmpi"(%iv1, %c1_i32) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %5 = "arith.select"(%4, %iv1, %c1_i32) : (i1, i32, i32) -> i32
      %6:2 = "scf.for"(%c0_i32, %iv1, %c10_i32, %c0_i32, %c0_i32) ({
      ^bb0(%iv5: i32, %iv6: i32, %iv7: i32, %iv8: i32, %iv9: i32):
        %7 = "arith.addi"(%iv5, %c1_i32) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %8 = "arith.cmpi"(%7, %arg1) <{predicate = 0 : i64}> : (i32, i32) -> i1
        %9 = "arith.select"(%8, %7, %arg1) : (i1, i32, i32) -> i32
        %10 = "arith.cmpi"(%iv6, %c1_i32) <{predicate = 0 : i64}> : (i32, i32) -> i1
        %11 = "arith.select"(%10, %iv6, %c1_i32) : (i1, i32, i32) -> i32
        "scf.yield"(%iv7, %iv8, %9, %11) : (i32, i32, i32, i32) -> ()
      }) : (i32, i32, i32, i32, i32, i32, i32) -> (i32, i32)
      "scf.yield"(%iv2, %iv3, %iv4, %5) : (i32, i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32, i32, i32) -> (i32, i32)
    "tt.return"(%0#0, %0#1) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.compute-capability" = 80 : i32, "ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 32 : i32, "ttg.threads-per-warp" = 128 : i32} : () -> ()