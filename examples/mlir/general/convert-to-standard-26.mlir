"builtin.module"() ({
  "func.func"() <{function_type = (complex<f32>) -> f32, sym_name = "complex_abs_with_fmf"}> ({
  ^bb0(%arg0: complex<f32>):
    %0 = "complex.abs"(%arg0) <{fastmath = #arith.fastmath<nnan,contract>}> : (complex<f32>) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

