"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f16>) -> tensor<f16>, sym_name = "sinh_f16"}> ({
  ^bb0(%arg0: tensor<f16>):
    %0 = "chlo.sinh"(%arg0) : (tensor<f16>) -> tensor<f16>
    "func.return"(%0) : (tensor<f16>) -> ()
  }) : () -> ()
}) : () -> ()

