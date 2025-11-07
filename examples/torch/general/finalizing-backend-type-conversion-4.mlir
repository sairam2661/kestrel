"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "extfTruncf"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.extf"(%arg0) : (f32) -> f64
    %1 = "arith.truncf"(%0) : (f64) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

