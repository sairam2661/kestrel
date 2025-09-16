"builtin.module"() ({
  "func.func"() <{function_type = (i1, i64) -> (), sym_name = "combineIfsNot"}> ({
  ^bb0(%arg0: i1, %arg1: i64):
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "arith.xori"(%arg0, %0) : (i1, i1) -> i1
    "scf.if"(%arg0) ({
      "test.firstCodeTrue"() : () -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "scf.if"(%1) ({
      "test.secondCodeTrue"() : () -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

