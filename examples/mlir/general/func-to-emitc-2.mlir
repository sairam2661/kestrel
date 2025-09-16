"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "foo"}> ({
  ^bb0(%arg0: i32):
    "emitc.call_opaque"(%arg0) <{callee = "bar"}> : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

