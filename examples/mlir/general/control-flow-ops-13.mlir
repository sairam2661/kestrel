"builtin.module"() ({
  "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> (), sym_name = "callee"}> ({
    "spirv.Return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "caller"}> ({
    "spirv.FunctionCall"() <{callee = @callee}> : () -> ()
    "spirv.Return"() : () -> ()
  }) : () -> ()
}) : () -> ()

