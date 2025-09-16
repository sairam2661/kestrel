"builtin.module"() ({
  "func.func"() <{function_type = (complex<f32>) -> complex<f32>, sym_name = "complex_log1p"}> ({
  ^bb0(%arg0: complex<f32>):
    %0 = "complex.log1p"(%arg0) <{fastmath = #arith.fastmath<none>}> : (complex<f32>) -> complex<f32>
    "func.return"(%0) : (complex<f32>) -> ()
  }) : () -> ()
}) : () -> ()

