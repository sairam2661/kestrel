"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (), sym_name = "loop_buffer_phase_args"}> ({
  ^bb0(%arg7: i32):
    %14 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %15 = "arith.constant"() <{value = 128 : i32}> : () -> i32
    %16 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %17 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %18:10 = "scf.for"(%16, %arg7, %15, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16) ({
    ^bb0(%arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32):
      %19 = "arith.subi"(%arg7, %15) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %20 = "arith.cmpi"(%arg8, %19) <{predicate = 2 : i64}> : (i32, i32) -> i1
      %21 = "arith.xori"(%arg14, %17) : (i32, i32) -> i32
      "index_phase_use"(%arg11, %arg12, %21, %arg15) : (i32, i32, i32, i32) -> ()
      %22 = "arith.addi"(%arg11, %17) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %23 = "arith.xori"(%arg12, %17) : (i32, i32) -> i32
      %24 = "arith.cmpi"(%22, %14) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %25 = "arith.select"(%24, %16, %22) : (i1, i32, i32) -> i32
      %26 = "arith.select"(%24, %23, %arg12) : (i1, i32, i32) -> i32
      %27 = "arith.xori"(%arg15, %17) : (i32, i32) -> i32
      %28 = "arith.xori"(%arg18, %17) : (i32, i32) -> i32
      %29 = "arith.xori"(%arg13, %17) : (i32, i32) -> i32
      %30 = "arith.addi"(%arg9, %17) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %31 = "arith.xori"(%arg10, %17) : (i32, i32) -> i32
      %32 = "arith.cmpi"(%30, %14) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %33 = "arith.select"(%32, %16, %30) : (i1, i32, i32) -> i32
      %34 = "arith.select"(%32, %31, %arg10) : (i1, i32, i32) -> i32
      "index_phase_use"(%33, %34, %29, %20) : (i32, i32, i32, i1) -> ()
      %35 = "arith.xori"(%arg17, %17) : (i32, i32) -> i32
      "index_phase_use"(%35, %arg18) : (i32, i32) -> ()
      %36 = "arith.xori"(%arg16, %17) : (i32, i32) -> i32
      "index_phase_use"(%35, %arg18) : (i32, i32) -> ()
      "scf.yield"(%33, %34, %25, %26, %29, %21, %27, %36, %35, %28) : (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) -> (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "invalid_cache_test", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3:4 = "scf.for"(%2, %arg0, %arg1, %2, %2, %2, %2) ({
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32):
      %4 = "arith.addi"(%arg5, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %5 = "arith.xori"(%arg6, %0) : (i32, i32) -> i32
      %6 = "arith.cmpi"(%4, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %7 = "arith.select"(%6, %5, %arg6) : (i1, i32, i32) -> i32
      %8 = "arith.select"(%6, %0, %4) : (i1, i32, i32) -> i32
      %9 = "arith.addi"(%arg3, %0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %10 = "arith.xori"(%arg4, %0) : (i32, i32) -> i32
      %11 = "arith.cmpi"(%9, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %12 = "arith.select"(%11, %2, %9) : (i1, i32, i32) -> i32
      %13 = "arith.select"(%11, %10, %arg4) : (i1, i32, i32) -> i32
      "scf.yield"(%12, %13, %8, %7) : (i32, i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32, i32, i32) -> (i32, i32, i32, i32)
    "tt.return"(%3#1, %3#3) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

