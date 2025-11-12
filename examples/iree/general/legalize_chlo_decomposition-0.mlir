"builtin.module"() ({
  "func.func"() <{function_type = (tensor<bf16>) -> tensor<bf16>, sym_name = "asin_bf16"}> ({
  ^bb0(%arg0: tensor<bf16>):
    %0 = "chlo.asin"(%arg0) : (tensor<bf16>) -> tensor<bf16>
    "func.return"(%0) : (tensor<bf16>) -> ()
  }) : () -> ()
}) : () -> ()

