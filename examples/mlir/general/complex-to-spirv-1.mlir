"builtin.module"() ({
  "func.func"() <{function_type = (complex<f32>) -> f32, sym_name = "real_number"}> ({
  ^bb0(%arg0: complex<f32>):
    %0 = "complex.re"(%arg0) <{fastmath = #arith.fastmath<none>}> : (complex<f32>) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

