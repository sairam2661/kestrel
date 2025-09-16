"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x7x5xi32>, tensor<3x6xi32>, tensor<3x6x5xi32>) -> tensor<3x7x5xi32>, sym_name = "scatter_test"}> ({
  ^bb0(%arg0: tensor<3x7x5xi32>, %arg1: tensor<3x6xi32>, %arg2: tensor<3x6x5xi32>):
    %0 = "tosa.scatter"(%arg0, %arg1, %arg2) : (tensor<3x7x5xi32>, tensor<3x6xi32>, tensor<3x6x5xi32>) -> tensor<3x7x5xi32>
    "func.return"(%0) : (tensor<3x7x5xi32>) -> ()
  }) : () -> ()
}) : () -> ()

