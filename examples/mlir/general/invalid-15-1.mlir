"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> (), sym_name = "unsupported_op"}> ({
  ^bb0(%arg0: i1):
    "cf.assert"(%arg0) <{msg = "assertion foo"}> : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

