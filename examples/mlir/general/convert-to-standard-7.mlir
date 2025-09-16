"builtin.module"() ({
  "func.func"() <{function_type = (complex<f32>) -> complex<f32>, sym_name = "complex_expm1"}> ({
  ^bb0(%arg0: complex<f32>):
    %0 = "complex.expm1"(%arg0) <{fastmath = #arith.fastmath<nnan,contract>}> : (complex<f32>) -> complex<f32>
    "func.return"(%0) : (complex<f32>) -> ()
  }) : () -> ()
}) : () -> ()

