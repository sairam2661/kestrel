"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x?xi32>, tensor<2x?xi32>) -> (tensor<2x?xi32>), sym_name = "tensor_add_with_dim_change"}> ({
  ^bb0(%arg0: tensor<2x?xi32>, %arg1: tensor<2x?xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tosa.reshape"(%arg0) <{shape = [2, "?"]}> : (tensor<2x?xi32>) -> tensor<2x?xi32>
    %2 = "arith.addi"(%1, %arg1) : (tensor<2x?xi32>, tensor<2x?xi32>) -> tensor<2x?xi32>
    %3 = "tosa.reshape"(%2) <{shape = ["?", 2]}> : (tensor<2x?xi32>) -> tensor<?x2xi32>
    "func.return"(%3) : (tensor<?x2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?xi32>, tensor<?xi32>) -> (tensor<?xi32>), sym_name = "vector_add_with_cast"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<?xi32>):
    %0 = "tosa.cast"(%arg0) : (tensor<?xi32>) -> tensor<?xi32>
    %1 = "tosa.cast"(%arg1) : (tensor<?xi32>) -> tensor<?xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>
    "func.return"(%2) : (tensor<?xi32>) -> ()
  }) : () -> ()
}) : () -> ()