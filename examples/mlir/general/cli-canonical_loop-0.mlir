"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "omp_canonloop_raw"}> ({
  ^bb0(%arg16: i32):
    "omp.canonical_loop"(%arg16) ({
    ^bb0(%arg17: i32):
      %14 = "llvm.add"(%arg17, %arg17) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
      "omp.terminator"() : () -> ()
    }) : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> (), sym_name = "omp_canonloop_sequential_raw"}> ({
  ^bb0(%arg13: i32):
    %11 = "omp.new_cli"() : () -> !omp.cli
    "omp.canonical_loop"(%arg13, %11) ({
    ^bb0(%arg15: i32):
      %13 = "llvm.add"(%arg15, %arg15) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
      "omp.terminator"() : () -> ()
    }) : (i32, !omp.cli) -> ()
    %12 = "omp.new_cli"() : () -> !omp.cli
    "omp.canonical_loop"(%arg13, %12) ({
    ^bb0(%arg14: i32):
      "omp.terminator"() : () -> ()
    }) : (i32, !omp.cli) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> (), sym_name = "omp_nested_canonloop_raw"}> ({
  ^bb0(%arg9: i32, %arg10: i32):
    %8 = "omp.new_cli"() : () -> !omp.cli
    %9 = "omp.new_cli"() : () -> !omp.cli
    "omp.canonical_loop"(%arg9, %8) ({
    ^bb0(%arg11: i32):
      "omp.canonical_loop"(%arg10, %9) ({
      ^bb0(%arg12: i32):
        %10 = "llvm.add"(%arg11, %arg12) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
        "omp.terminator"() : () -> ()
      }) : (i32, !omp.cli) -> ()
      "omp.terminator"() : () -> ()
    }) : (i32, !omp.cli) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> (), sym_name = "omp_canonloop_pretty"}> ({
  ^bb0(%arg7: i32):
    "omp.canonical_loop"(%arg7) ({
    ^bb0(%arg8: i32):
      %7 = "llvm.add"(%arg8, %arg8) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
      "omp.terminator"() : () -> ()
    }) : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "omp_canonloop_constant_pretty"}> ({
    %5 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    "omp.canonical_loop"(%5) ({
    ^bb0(%arg6: i32):
      %6 = "llvm.add"(%arg6, %arg6) <{overflowFlags = 0 : i32}> : (i32, i32) -> i32
      "omp.terminator"() : () -> ()
    }) : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> (), sym_name = "omp_canonloop_sequential_pretty"}> ({
  ^bb0(%arg3: i32):
    %3 = "omp.new_cli"() : () -> !omp.cli
    "omp.canonical_loop"(%arg3, %3) ({
    ^bb0(%arg5: i32):
      "omp.terminator"() : () -> ()
    }) : (i32, !omp.cli) -> ()
    %4 = "omp.new_cli"() : () -> !omp.cli
    "omp.canonical_loop"(%arg3, %4) ({
    ^bb0(%arg4: i32):
      "omp.terminator"() : () -> ()
    }) : (i32, !omp.cli) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> (), sym_name = "omp_canonloop_nested_pretty"}> ({
  ^bb0(%arg0: i32):
    %1 = "omp.new_cli"() : () -> !omp.cli
    %2 = "omp.new_cli"() : () -> !omp.cli
    "omp.canonical_loop"(%arg0, %1) ({
    ^bb0(%arg1: i32):
      "omp.canonical_loop"(%arg0, %2) ({
      ^bb0(%arg2: i32):
        "omp.terminator"() : () -> ()
      }) : (i32, !omp.cli) -> ()
      "omp.terminator"() : () -> ()
    }) : (i32, !omp.cli) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "omp_newcli_unused"}> ({
    %0 = "omp.new_cli"() : () -> !omp.cli
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

