"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "replace_false_if_with_values"}> ({
    %0 = "arith.constant"() <{value = false}> : () -> i1
    %1 = "scf.if"(%0) ({
      %3 = "test.op"() : () -> i32
      "scf.yield"(%3) : (i32) -> ()
    }, {
      %2 = "test.other_op"() : () -> i32
      "scf.yield"(%2) : (i32) -> ()
    }) : (i1) -> i32
    "test.consume"(%1) : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

