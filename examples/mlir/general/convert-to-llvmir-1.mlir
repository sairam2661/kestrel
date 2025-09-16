"builtin.module"() ({
  "omp.critical.declare"() <{hint = 10 : i64, sym_name = "mutex"}> : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "critical_declare"}> ({
    "omp.critical"() <{name = @mutex}> ({
      "omp.terminator"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

