"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "imul_scalar"}> ({
  ^bb0(%arg0: i32):
    %0 = "spirv.IMul"(%arg0, %arg0) : (i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

