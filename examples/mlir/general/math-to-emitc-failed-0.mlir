"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xf32>) -> tensor<4xf32>, sym_name = "unsupported_tensor_type"}> ({
  ^bb0(%arg0: tensor<4xf32>):
    %0 = "math.absf"(%arg0) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>) -> tensor<4xf32>
    "func.return"(%0) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

