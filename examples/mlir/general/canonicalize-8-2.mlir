"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> (), sym_name = "cf.assert"}> ({
  ^bb0(%arg0: i1):
    "cf.assert"(%arg0) <{msg = "Computer says no"}> : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

