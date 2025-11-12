"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x16xf16>) -> tensor<16x16xf16>, sym_name = "bessel_i1e_f16"}> ({
  ^bb0(%arg0: tensor<16x16xf16>):
    %0 = "chlo.bessel_i1e"(%arg0) : (tensor<16x16xf16>) -> tensor<16x16xf16>
    "func.return"(%0) : (tensor<16x16xf16>) -> ()
  }) : () -> ()
}) : () -> ()

