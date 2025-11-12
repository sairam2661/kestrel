"builtin.module"() ({
  "func.func"() <{function_type = (tensor<bf16>) -> tensor<bf16>, sym_name = "erf_bf16"}> ({
  ^bb0(%arg0: tensor<bf16>):
    %0 = "chlo.erf"(%arg0) : (tensor<bf16>) -> tensor<bf16>
    "func.return"(%0) : (tensor<bf16>) -> ()
  }) : () -> ()
}) : () -> ()

