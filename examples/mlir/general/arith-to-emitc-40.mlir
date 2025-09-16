"builtin.module"() ({
  "func.func"() <{function_type = (f16) -> f64, sym_name = "arith_extf"}> ({
  ^bb0(%arg0: f16):
    %0 = "arith.extf"(%arg0) : (f16) -> f32
    %1 = "arith.extf"(%0) : (f32) -> f64
    "func.return"(%1) : (f64) -> ()
  }) : () -> ()
}) : () -> ()

