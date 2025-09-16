"builtin.module"() ({
  "func.func"() <{function_type = () -> (i1, i1), sym_name = "main"}> ({
    %2 = "arith.constant"() <{value = true}> : () -> i1
    %3 = "arith.constant"() <{value = true}> : () -> i1
    "func.return"(%2, %3) : (i1, i1) -> ()
  }) : () -> ()
  "builtin.module"() <{sym_name = "module"}> ({
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "arith.constant"() <{value = true}> : () -> i1
    "foo.op"(%0, %1) : (i1, i1) -> ()
  }) : () -> ()
}) : () -> ()

