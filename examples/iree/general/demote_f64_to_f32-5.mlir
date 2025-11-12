"builtin.module"() ({
  "util.func"() <{function_type = (f64) -> f32, sym_name = "arith.truncf", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: f64):
    %0 = "arith.truncf"(%arg0) : (f64) -> f32
    "util.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

