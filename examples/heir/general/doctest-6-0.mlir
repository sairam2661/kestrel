"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "test_exp"}> ({
  ^bb0(%arg0: f32):
    %0 = "math.exp"(%arg0) <{fastmath = #arith.fastmath<none>}> {degree = 3 : i32, domain_lower = -1.000000e+00 : f64, domain_upper = 1.000000e+00 : f64} : (f32) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

