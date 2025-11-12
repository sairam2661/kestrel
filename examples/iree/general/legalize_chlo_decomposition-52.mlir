"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x16xf32>) -> tensor<16x16xf32>, sym_name = "bessel_i1e_f32"}> ({
  ^bb0(%arg0: tensor<16x16xf32>):
    %0 = "chlo.bessel_i1e"(%arg0) : (tensor<16x16xf32>) -> tensor<16x16xf32>
    "func.return"(%0) : (tensor<16x16xf32>) -> ()
  }) : () -> ()
}) : () -> ()

