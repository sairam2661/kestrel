"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<5x5xi32>, %arg1: tensor<5x5xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>
    "func.return"(%0) : (tensor<5x5xi32>) -> ()
  }) : () -> ()
}) : () -> ()