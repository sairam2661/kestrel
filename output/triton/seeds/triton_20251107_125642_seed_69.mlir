"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_mixed_ops", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %3 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %4 = "arith.divsi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %5 = "arith.modsi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %6 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %7 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %8 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32, step = 1 : i32}> : () -> tensor<16xi32>
    %9 = "tt.expand_dims"(%8) <{axes = [0, 1]}> : (tensor<16xi32>) -> tensor<1x16xi32>
    %10 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %11 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %12 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %13 = "tt.call"("min_max", %arg0, %arg1) : (i32, i32) -> (i32, i32)
    %14 = "tt.addptr"(%12, %10) : (i32, i32) -> i32
    %15 = "scf.if"(%6) ({
    ^bb0(%16: i1):
      %17 = "arith.addi"(%13#0, %13#1) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
      "scf.yield"(%17) : (i32) -> ()
    }, {
    ^bb1(%18: i1):
      %19 = "arith.subi"(%13#0, %13#1) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
      "scf.yield"(%19) : (i32) -> ()
    }) : (i1) -> i32
    %20 = "scf.for"(%10, %11, %12, %arg0) ({
    ^bb0(%21: index, %22: i32):
      %23 = "arith.addi"(%22, %10) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
      "scf.yield"(%21, %23) : (index, i32) -> ()
    }) : (index, index, index, i32) -> (index, i32)
    %24 = "tt.return"(%20#1, %15) : (i32, i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "min_max", sym_visibility = "public"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %25 = "arith.minimumi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %26 = "arith.maximumi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    "tt.return"(%25, %26) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()