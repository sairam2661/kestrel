"builtin.module"() ({
  "func.func"() <{function_type = () -> complex<f32>, sym_name = "complex_const"}> ({
    %0 = "complex.constant"() <{value = [0x7FC00000 : f32, 0.000000e+00 : f32]}> : () -> complex<f32>
    "func.return"(%0) : (complex<f32>) -> ()
  }) : () -> ()
}) : () -> ()

