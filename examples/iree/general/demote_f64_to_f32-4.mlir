"builtin.module"() ({
  "util.func"() <{function_type = (f64) -> f64, sym_name = "extern_func", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  }) : () -> ()
  "util.func"() <{function_type = (f64) -> f64, sym_name = "caller", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: f64):
    %0 = "util.call"(%arg0) <{callee = @extern_func, tied_operands = [-1 : index]}> : (f64) -> f64
    "util.return"(%0) : (f64) -> ()
  }) : () -> ()
}) : () -> ()

