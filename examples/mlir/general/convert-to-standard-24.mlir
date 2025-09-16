"builtin.module"() ({
  "func.func"() <{function_type = (complex<f32>) -> complex<f32>, sym_name = "complex_rsqrt_nnan_ninf"}> ({
  ^bb0(%arg0: complex<f32>):
    %0 = "complex.rsqrt"(%arg0) <{fastmath = #arith.fastmath<nnan,ninf>}> : (complex<f32>) -> complex<f32>
    "func.return"(%0) : (complex<f32>) -> ()
  }) : () -> ()
}) : () -> ()

