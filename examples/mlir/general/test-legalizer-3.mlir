"builtin.module"() ({
  "func.func"() <{function_type = (i64) -> (), sym_name = "remap_input_1_to_1"}> ({
  ^bb0(%arg1: i64):
    "test.invalid"(%arg1) : (i64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i64) -> (), sym_name = "remap_call_1_to_1"}> ({
  ^bb0(%arg0: i64):
    "func.call"(%arg0) <{callee = @remap_input_1_to_1}> : (i64) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

