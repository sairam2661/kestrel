"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "not"}> ({
  ^bb0(%arg0: i32):
    %0 = "spirv.Not"(%arg0) : (i32) -> i32
    "spirv.ReturnValue"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

