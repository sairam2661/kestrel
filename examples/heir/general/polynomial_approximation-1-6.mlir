"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xf32>, tensor<10xf32>) -> tensor<10xf32>, sym_name = "test_maximumf_ignore_arg"}> ({
  ^bb0(%arg0: tensor<10xf32>, %arg1: tensor<10xf32>):
    %0 = "arith.maximumf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<10xf32>, tensor<10xf32>) -> tensor<10xf32>
    "func.return"(%0) : (tensor<10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

