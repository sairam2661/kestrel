"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32, i32), sym_name = "complex_op_chain", sym_visibility = "private"}> ({
    ^bb0(%arg0: i32):
      %1 = "arith.constant"() <{value = 8 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 16 : i32}> : () -> i32
      %3 = "arith.constant"() <{value = 32 : i32}> : () -> i32
      %4 = "arith.constant"() <{value = 64 : i32}> : () -> i32
      %5 = "arith.constant"() <{value = 128 : i32}> : () -> i32
      %6 = "arith.constant"() <{value = 256 : i32}> : () -> i32
      %7 = "arith.constant"() <{value = 512 : i32}> : () -> i32
      %8 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
      %9 = "arith.constant"() <{value = 2048 : i32}> : () -> i32
      %10 = "arith.constant"() <{value = 4096 : i32}> : () -> i32
  
      %11 = "arith.muli"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %12 = "arith.addi"(%11, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %13 = "arith.subi"(%12, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %14 = "arith.muli"(%13, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %15 = "arith.addi"(%14, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %16 = "arith.subi"(%15, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %17 = "arith.muli"(%16, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %18 = "arith.addi"(%17, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %19 = "arith.subi"(%18, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %20 = "arith.muli"(%19, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
  
      "tt.return"(%20, %arg0) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()