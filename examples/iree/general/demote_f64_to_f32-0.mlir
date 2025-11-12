"builtin.module"() ({
  "util.func"() <{function_type = () -> f64, sym_name = "constantF64", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = 1.234000e+02 : f64}> : () -> f64
    "util.return"(%0) : (f64) -> ()
  }) : () -> ()
}) : () -> ()

