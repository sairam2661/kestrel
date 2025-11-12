"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f16>) -> tensor<f16>, sym_name = "cosh_f16"}> ({
  ^bb0(%arg0: tensor<f16>):
    %0 = "chlo.cosh"(%arg0) : (tensor<f16>) -> tensor<f16>
    "func.return"(%0) : (tensor<f16>) -> ()
  }) : () -> ()
}) : () -> ()

