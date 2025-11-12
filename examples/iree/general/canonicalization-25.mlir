"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x0xi32>, tensor<5x0xi32>) -> tensor<5x0xi32>, sym_name = "add_zero_ext"}> ({
  ^bb0(%arg0: tensor<5x0xi32>, %arg1: tensor<5x0xi32>):
    %0 = "stablehlo.add"(%arg0, %arg1) : (tensor<5x0xi32>, tensor<5x0xi32>) -> tensor<5x0xi32>
    "func.return"(%0) : (tensor<5x0xi32>) -> ()
  }) : () -> ()
}) : () -> ()

