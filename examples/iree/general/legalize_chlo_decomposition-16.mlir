"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f16>) -> tensor<f16>, sym_name = "erf_f16"}> ({
  ^bb0(%arg0: tensor<f16>):
    %0 = "chlo.erf"(%arg0) : (tensor<f16>) -> tensor<f16>
    "func.return"(%0) : (tensor<f16>) -> ()
  }) : () -> ()
}) : () -> ()

