"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xf32>) -> tensor<8xf32>, sym_name = "math_fpowi_pos_odd_power"}> ({
  ^bb0(%arg0: tensor<8xf32>):
    %0 = "arith.constant"() <{value = dense<5> : tensor<8xi64>}> : () -> tensor<8xi64>
    %1 = "math.fpowi"(%arg0, %0) <{fastmath = #arith.fastmath<none>}> : (tensor<8xf32>, tensor<8xi64>) -> tensor<8xf32>
    "func.return"(%1) : (tensor<8xf32>) -> ()
  }) : () -> ()
}) : () -> ()

