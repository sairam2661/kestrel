"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "consume", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (i1, i32) -> (), sym_name = "test_scf_if_then_only_sink"}> ({
  ^bb0(%arg0: i1, %arg1: i32):
    %0 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "scf.if"(%arg0) ({
      "func.call"(%0) <{callee = @consume}> : (i32) -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

