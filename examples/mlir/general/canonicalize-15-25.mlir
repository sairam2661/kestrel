"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1) -> i32, sym_name = "merge_yielding_nested_if_nv2"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    %0 = "test.op"() : () -> i32
    %1 = "test.op1"() : () -> i32
    %2 = "scf.if"(%arg0) ({
      "scf.if"(%arg1) ({
        "test.run"() : () -> ()
        "scf.yield"() : () -> ()
      }, {
      }) : (i1) -> ()
      "scf.yield"(%0) : (i32) -> ()
    }, {
      "scf.yield"(%1) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

