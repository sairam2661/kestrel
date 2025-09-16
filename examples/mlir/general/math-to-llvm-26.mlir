"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "cttz"}> ({
  ^bb0(%arg0: i32):
    %0 = "math.cttz"(%arg0) : (i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

