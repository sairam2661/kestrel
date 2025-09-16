"builtin.module"() ({
  "func.func"() <{function_type = () -> (f32, i24), sym_name = "callee", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "caller"}> ({
    %0:2 = "func.call"() <{callee = @callee}> : () -> (f32, i24)
    "test.some_user"(%0#0, %0#1) : (f32, i24) -> ()
    "test.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

