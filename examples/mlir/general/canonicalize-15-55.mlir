"builtin.module"() ({
  "func.func"() <{function_type = (i1, i64) -> (), sym_name = "combineIfs4"}> ({
  ^bb0(%arg0: i1, %arg1: i64):
    "scf.if"(%arg0) ({
      "test.firstCodeTrue"() : () -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "scf.if"(%arg0) ({
      "test.secondCodeTrue"() : () -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

