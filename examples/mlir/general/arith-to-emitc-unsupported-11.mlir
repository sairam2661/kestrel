"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xf32>) -> tensor<5xf32>, sym_name = "arith_negf_tensor"}> ({
  ^bb0(%arg0: tensor<5xf32>):
    %0 = "arith.negf"(%arg0) <{fastmath = #arith.fastmath<none>}> : (tensor<5xf32>) -> tensor<5xf32>
    "func.return"(%0) : (tensor<5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

