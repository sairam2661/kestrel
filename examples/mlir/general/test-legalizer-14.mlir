"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "bounded_recursion"}> ({
    "test.recursive_rewrite"() <{depth = 3 : i64}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

