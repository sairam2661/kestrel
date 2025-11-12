"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x20x32xf32>, tensor<10x20x32xf32>) -> tensor<10x20x32xf32>, sym_name = "add_and_compare"}> ({
  ^bb0(%arg0: tensor<10x20x32xf32>, %arg1: tensor<10x20x32xf32>):
    %0 = "arith.addf"(%arg0, %arg1) : (tensor<10x20x32xf32>, tensor<10x20x32xf32>) -> tensor<10x20x32xf32>
    %1 = "arith.cmpf"(%arg0, %arg1) {"predicate" = "oeq"} : (tensor<10x20x32xf32>, tensor<10x20x32xf32>) -> tensor<10x20x32xi1>
    %2 = "arith.cmpf"(%0, %arg1) {"predicate" = "olt"} : (tensor<10x20x32xf32>, tensor<10x20x32xf32>) -> tensor<10x20x32xi1>
    %3 = "tosa.const"() {"value" = dense<0.000000e+00>: tensor<10x20x32xf32>} : () -> tensor<10x20x32xf32>
    "func.return"(%0) : (tensor<10x20x32xf32>) -> ()
  }) : () -> ()
}) : () -> ()