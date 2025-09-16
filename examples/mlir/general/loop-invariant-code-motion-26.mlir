"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "test_always_speculatable_op"}> ({
  ^bb0(%arg23: index, %arg24: index, %arg25: index):
    "scf.for"(%arg23, %arg24, %arg25) ({
    ^bb0(%arg26: index):
      %10 = "test.always_speculatable_op"() : () -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "test_never_speculatable_op"}> ({
  ^bb0(%arg19: index, %arg20: index, %arg21: index):
    "scf.for"(%arg19, %arg20, %arg21) ({
    ^bb0(%arg22: index):
      %9 = "test.never_speculatable_op"() : () -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "test_conditionally_speculatable_op_success"}> ({
  ^bb0(%arg15: index, %arg16: index, %arg17: index):
    "scf.for"(%arg15, %arg16, %arg17) ({
    ^bb0(%arg18: index):
      %7 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %8 = "test.conditionally_speculatable_op"(%7) : (i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index, index, index, i32) -> (), sym_name = "test_conditionally_speculatable_op_failure"}> ({
  ^bb0(%arg10: index, %arg11: index, %arg12: index, %arg13: i32):
    %4 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %5 = "arith.addi"(%arg13, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "scf.for"(%arg10, %arg11, %arg12) ({
    ^bb0(%arg14: index):
      %6 = "test.conditionally_speculatable_op"(%5) : (i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index, index, index, i32) -> (), sym_name = "test_recursively_speculatable_op_success"}> ({
  ^bb0(%arg5: index, %arg6: index, %arg7: index, %arg8: i32):
    "scf.for"(%arg5, %arg6, %arg7) ({
    ^bb0(%arg9: index):
      %2 = "test.recursively_speculatable_op"() ({
        %3 = "arith.addi"(%arg8, %arg8) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "test.region_yield"(%3) : (i32) -> ()
      }) : () -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index, index, index, i32) -> (), sym_name = "test_recursively_speculatable_op_failure"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: i32):
    "scf.for"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg4: index):
      %0 = "test.recursively_speculatable_op"() ({
        %1 = "test.never_speculatable_op"() : () -> i32
        "test.region_yield"(%1) : (i32) -> ()
      }) : () -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

