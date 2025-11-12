"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x16xf64>) -> tensor<16x16xf64>, sym_name = "bessel_i1e_f64"}> ({
  ^bb0(%arg0: tensor<16x16xf64>):
    %0 = "chlo.bessel_i1e"(%arg0) : (tensor<16x16xf64>) -> tensor<16x16xf64>
    "func.return"(%0) : (tensor<16x16xf64>) -> ()
  }) : () -> ()
}) : () -> ()

