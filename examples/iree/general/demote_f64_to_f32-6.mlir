"builtin.module"() ({
  "util.func"() <{function_type = (f32) -> f64, sym_name = "arith.extf", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.extf"(%arg0) : (f32) -> f64
    "util.return"(%0) : (f64) -> ()
  }) : () -> ()
}) : () -> ()

