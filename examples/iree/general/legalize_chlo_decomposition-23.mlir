"builtin.module"() ({
  "func.func"() <{function_type = (tensor<bf16>) -> tensor<bf16>, sym_name = "erfc_bf16"}> ({
  ^bb0(%arg0: tensor<bf16>):
    %0 = "chlo.erfc"(%arg0) : (tensor<bf16>) -> tensor<bf16>
    "func.return"(%0) : (tensor<bf16>) -> ()
  }) : () -> ()
}) : () -> ()

