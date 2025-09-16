"builtin.module"() ({
  "spirv.module"() <{addressing_model = #spirv.addressing_model<Logical>, memory_model = #spirv.memory_model<GLSL450>}> ({
    "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> i32, sym_name = "callee"}> ({
      %1 = "spirv.Constant"() <{value = 42 : i32}> : () -> i32
      "spirv.ReturnValue"(%1) : (i32) -> ()
    }) : () -> ()
    "spirv.func"() <{function_control = #spirv.function_control<None>, function_type = () -> i32, sym_name = "calling_single_block_retval_func"}> ({
      %0 = "spirv.FunctionCall"() <{callee = @callee}> : () -> i32
      "spirv.ReturnValue"(%0) : (i32) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

