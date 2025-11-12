"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "tensor_xor_and_add"}> ({
    ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
      %0 = "tosa.bitwise_xor"(%arg0, %arg1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      %1 = "tosa.bitwise_and"(%arg0, %arg1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      %2 = "tosa.add"(%0, %1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      "func.return"(%2) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()