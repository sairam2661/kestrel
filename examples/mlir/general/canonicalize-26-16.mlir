"builtin.module"() ({
  "func.func"() <{function_type = () -> (i32, i32), sym_name = "deduplicate_scalar_constant"}> ({
    %0 = "spirv.Constant"() <{value = 42 : i32}> : () -> i32
    %1 = "spirv.Constant"() <{value = 42 : i32}> : () -> i32
    "func.return"(%0, %1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

