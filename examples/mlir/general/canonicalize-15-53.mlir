"builtin.module"() ({
  "func.func"() <{function_type = (i1, i64) -> i32, sym_name = "combineIfs2"}> ({
  ^bb0(%arg0: i1, %arg1: i64):
    "scf.if"(%arg0) ({
      "test.firstCodeTrue"() : () -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    %0 = "scf.if"(%arg0) ({
      %2 = "test.secondCodeTrue"() : () -> i32
      "scf.yield"(%2) : (i32) -> ()
    }, {
      %1 = "test.secondCodeFalse"() : () -> i32
      "scf.yield"(%1) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

