"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>, sym_name = "main"}> ({
  ^bb0(%arg0: tensor<4xf32>, %arg1: tensor<4xf32>):
    %0 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %1 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %2 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %3 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %4 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %5 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %6 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %7 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %8 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %9 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %10 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %11 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %12 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %13 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %14 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %15 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %16 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %17 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %18 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %19 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %20 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %21 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %22 = "xla.add"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %23 = "long_op_name"(%0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "func.return"(%1) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

