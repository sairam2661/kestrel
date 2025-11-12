"builtin.module"() ({
  "util.func"() <{function_type = (i1) -> (), sym_name = "stripAssert"}> ({
  ^bb0(%arg0: i1):
    "cf.assert"(%arg0) <{msg = "hello!"}> : (i1) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

