"builtin.module"() ({
  "func.func"() <{function_type = (i1, i32) -> i32, sym_name = "test_scf_if_sink"}> ({
  ^bb0(%arg0: i1, %arg1: i32):
    %0 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %1 = "arith.muli"(%arg1, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %2 = "scf.if"(%arg0) ({
      "scf.yield"(%0) : (i32) -> ()
    }, {
      "scf.yield"(%1) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

