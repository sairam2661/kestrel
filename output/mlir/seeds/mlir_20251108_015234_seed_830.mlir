"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "complex_spirv"}> ({
    %0 = "spirv.func"() <{func_type = () -> i32}> : () -> i32
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    "spirv.ReturnValue"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()