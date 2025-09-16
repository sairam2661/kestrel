"builtin.module"() ({
  "func.func"() <{function_type = (complex<f32>) -> complex<f32>, sym_name = "complex_exp_with_fmf"}> ({
  ^bb0(%arg0: complex<f32>):
    %0 = "complex.exp"(%arg0) <{fastmath = #arith.fastmath<nnan,contract>}> : (complex<f32>) -> complex<f32>
    "func.return"(%0) : (complex<f32>) -> ()
  }) : () -> ()
}) : () -> ()

