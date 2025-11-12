"builtin.module"() ({
  "func.func"() <{function_type = (tensor<complex<f32>>) -> tensor<complex<f32>>, sym_name = "asin_complex_f32"}> ({
  ^bb0(%arg0: tensor<complex<f32>>):
    %0 = "chlo.asin"(%arg0) : (tensor<complex<f32>>) -> tensor<complex<f32>>
    "func.return"(%0) : (tensor<complex<f32>>) -> ()
  }) : () -> ()
}) : () -> ()

