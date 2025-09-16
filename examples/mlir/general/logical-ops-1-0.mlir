"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i1, sym_name = "iequal_scalar"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "spirv.IEqual"(%arg0, %arg1) : (i32, i32) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

