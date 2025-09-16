"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "goo", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (f32) -> (), sym_name = "check_scalar_func_call"}> ({
  ^bb0(%arg0: f32):
    %0 = "func.call"(%arg0) <{callee = @goo}> : (f32) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

