"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (), sym_name = "loop_buffer_phase_args"}> ({
  ^bb0(%arg11: i32):
    %18 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %19 = "arith.constant"() <{value = 128 : i32}> : () -> i32
    %20 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %21 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %22:10 = "scf.for"(%20, %arg11, %19, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20) ({
    ^bb0(%arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32):
      %23 = "arith.subi"(%arg11, %19) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %24 = "arith.cmpi"(%arg12, %23) <{predicate = 2 : i64}> : (i32, i32) -> i1
      %25 = "arith.xori"(%arg18, %21) : (i32, i32) -> i32
      "index_phase_use"(%arg15, %arg16, %25, %arg19) : (i32, i32, i32, i32) -> ()
      %26 = "arith.addi"(%arg15, %21) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %27 = "arith.xori"(%arg16, %21) : (i32, i32) -> i32
      %28 = "arith.cmpi"(%26, %18) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %29 = "arith.select"(%28, %20, %26) : (i1, i32, i32) -> i32
      %30 = "arith.select"(%28, %27, %arg16) : (i1, i32, i32) -> i32
      %31 = "arith.xori"(%arg19, %21) : (i32, i32) -> i32
      %32 = "arith.xori"(%arg22, %21) : (i32, i32) -> i32
      %33 = "arith.xori"(%arg17, %21) : (i32, i32) -> i32
      %34 = "arith.addi"(%arg13, %21) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %35 = "arith.xori"(%arg14, %21) : (i32, i32) -> i32
      %36 = "arith.cmpi"(%34, %18) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %37 = "arith.select"(%36, %20, %34) : (i1, i32, i32) -> i32
      %38 = "arith.select"(%36, %35, %arg14) : (i1, i32, i32) -> i32
      "index_phase_use"(%37, %38, %33, %24) : (i32, i32, i32, i1) -> ()
      %39 = "arith.xori"(%arg21, %21) : (i32, i32) -> i32
      "index_phase_use"(%39, %arg22) : (i32, i32) -> ()
      %40 = "arith.xori"(%arg20, %21) : (i32, i32) -> i32
      "index_phase_use"(%39, %arg22) : (i32, i32) -> ()
      "scf.yield"(%37, %38, %29, %30, %33, %25, %31, %40, %39, %32) : (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) -> (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)
    "tt.return"() : () -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "invalid_cache_test", sym_visibility = "public"}> ({
  ^bb0(%arg4: i32, %arg5: i32):
    %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %7:4 = "scf.for"(%6, %arg4, %arg5, %6, %6, %6, %6) ({
    ^bb0(%arg6: i32, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32):
      %8 = "arith.addi"(%arg9, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %9 = "arith.xori"(%arg10, %4) : (i32, i32) -> i32
      %10 = "arith.cmpi"(%8, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %11 = "arith.select"(%10, %9, %arg10) : (i1, i32, i32) -> i32
      %12 = "arith.select"(%10, %4, %8) : (i1, i32, i32) -> i32
      %13 = "arith.addi"(%arg7, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %14 = "arith.xori"(%arg8, %4) : (i32, i32) -> i32
      %15 = "arith.cmpi"(%13, %5) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %16 = "arith.select"(%15, %6, %13) : (i1, i32, i32) -> i32
      %17 = "arith.select"(%15, %14, %arg8) : (i1, i32, i32) -> i32
      "scf.yield"(%16, %17, %12, %11) : (i32, i32, i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32, i32, i32) -> (i32, i32, i32, i32)
    "tt.return"(%7#1, %7#3) : (i32, i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (i32, i32), sym_name = "multiple_op_results"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2:2 = "scf.for"(%0, %arg0, %1, %0, %0) ({
    ^bb0(%arg1: i32, %arg2: i32, %arg3: i32):
      %3:2 = "tt.elementwise_inline_asm"(%arg2, %arg3) <{asm_string = "asm", constraints = "=r,=r,r,r", packed_element = 1 : i32, pure = true}> : (i32, i32) -> (i32, i32)
      "scf.yield"(%3#0, %3#1) : (i32, i32) -> ()
    }) : (i32, i32, i32, i32, i32) -> (i32, i32)
    "tt.return"(%2#0, %2#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

