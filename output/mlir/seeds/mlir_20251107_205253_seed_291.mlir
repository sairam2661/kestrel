"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5xf32>, tensor<5x5xf32>) -> tensor<5x5xi1>, sym_name = "compare_and_reduce"}> ({
  ^bb0(%arg0: tensor<5x5xf32>, %arg1: tensor<5x5xf32>):
    %0 = "arith.cmpf"(%arg0, %arg1) <{operation = "gt"}> : (tensor<5x5xf32>, tensor<5x5xf32>) -> tensor<5x5xi1>
    %1 = "tosa.reduce_any"(%0) <{axis = 0 : i32}> : (tensor<5x5xi1>) -> tensor<1x5xi1>
    "func.return"(%1) : (tensor<1x5xi1>) -> ()
  }) : () -> ()
}) : () -> ()