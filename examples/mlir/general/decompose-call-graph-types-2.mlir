"builtin.module"() ({
  "func.func"() <{function_type = (tuple<tuple<tuple<i1>>>) -> tuple<tuple<tuple<i1>>>, sym_name = "recursive_decomposition"}> ({
  ^bb0(%arg0: tuple<tuple<tuple<i1>>>):
    "func.return"(%arg0) : (tuple<tuple<tuple<i1>>>) -> ()
  }) : () -> ()
}) : () -> ()

