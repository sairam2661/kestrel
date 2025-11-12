"builtin.module"() ({
  "tt.func"() <{function_type = (!ttptr, !tttensor) -> (), sym_name = "triton_tensor_manipulation"}> ({
  ^bb0(%arg0: !ttptr, %arg1: !tttensor):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "tt.addptr"(%arg0, %1, %2) : (!ttptr, i32, i32) -> !ttptr
    %5 = "tt.expand_dims"(%arg1, %0) : (!tttensor, i32) -> !tttensor
    %6:4 = "scf.for"(%3, %1, %2, %3) ({
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32):
      %7 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %8 = "arith.cmpi"(%7, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %9 = "arith.select"(%8, %arg3, %7) : (i1, i32, i32) -> i32
      %10 = "arith.select"(%8, %arg4, %arg3) : (i1, i32, i32) -> i32
      "scf.yield"(%9, %10) : (i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32) -> (i32, i32)
    %11 = "tt.reduce"(%5) <{axis = 0 : i32}> ({
    ^bb0(%arg5: f32, %arg6: f32):
      %12 = "arith.addf"(%arg5, %arg6) <{fastmath = #arith_fastmathnone}> : (f32, f32) -> f32
      "tt.reduce.return"(%12) : (f32) -> ()
    }) : (!tttensor) -> !tttensor
    "tt.return"(%11) : (!tttensor) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 64 : i32} : () -> ()