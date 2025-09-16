"builtin.module"() ({
  "func.func"() <{function_type = (f64) -> f16, sym_name = "arith_truncf"}> ({
  ^bb0(%arg0: f64):
    %0 = "arith.truncf"(%arg0) : (f64) -> f32
    %1 = "arith.truncf"(%0) : (f32) -> f16
    "func.return"(%1) : (f16) -> ()
  }) : () -> ()
}) : () -> ()

