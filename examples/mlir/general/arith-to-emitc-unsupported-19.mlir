"builtin.module"() ({
  "func.func"() <{function_type = (f64) -> f32, sym_name = "arith_truncf"}> ({
  ^bb0(%arg0: f64):
    %0 = "arith.truncf"(%arg0) <{roundingmode = 4 : i32}> : (f64) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

