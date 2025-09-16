"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "udiv_scalar"}> ({
  ^bb0(%arg0: i32):
    %0 = "spirv.UDiv"(%arg0, %arg0) : (i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

