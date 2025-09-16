"builtin.module"() ({
  "func.func"() <{function_type = (i1, i64) -> i32, sym_name = "combineIfs3"}> ({
  ^bb0(%arg0: i1, %arg1: i64):
    %0 = "scf.if"(%arg0) ({
      %2 = "test.firstCodeTrue"() : () -> i32
      "scf.yield"(%2) : (i32) -> ()
    }, {
      %1 = "test.firstCodeFalse"() : () -> i32
      "scf.yield"(%1) : (i32) -> ()
    }) : (i1) -> i32
    "scf.if"(%arg0) ({
      "test.secondCodeTrue"() : () -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

