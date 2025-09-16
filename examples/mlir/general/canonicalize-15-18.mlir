"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "replace_true_if"}> ({
    %0 = "arith.constant"() <{value = true}> : () -> i1
    "scf.if"(%0) ({
      "test.op"() : () -> ()
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

