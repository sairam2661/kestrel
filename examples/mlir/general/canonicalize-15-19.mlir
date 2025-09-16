"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "remove_false_if"}> ({
    %0 = "arith.constant"() <{value = false}> : () -> i1
    "scf.if"(%0) ({
      "test.op"() : () -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

