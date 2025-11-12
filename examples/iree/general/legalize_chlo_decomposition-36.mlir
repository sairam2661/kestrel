"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f16>, tensor<f16>) -> tensor<f16>, sym_name = "polygamma_f16"}> ({
  ^bb0(%arg0: tensor<f16>, %arg1: tensor<f16>):
    %0 = "chlo.polygamma"(%arg0, %arg1) : (tensor<f16>, tensor<f16>) -> tensor<f16>
    "func.return"(%0) : (tensor<f16>) -> ()
  }) : () -> ()
}) : () -> ()

