"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x8xi8>, tensor<4x8xi8>) -> tensor<4x8xi8>, sym_name = "xor_and_or_test"}> ({
    ^bb0(%arg0: tensor<4x8xi8>, %arg1: tensor<4x8xi8>):
      %xor = "tosa.logical_xor"(%arg0, %arg1) : (tensor<4x8xi8>, tensor<4x8xi8>) -> tensor<4x8xi8>
      %and = "tosa.logical_and"(%xor, %arg0) : (tensor<4x8xi8>, tensor<4x8xi8>) -> tensor<4x8xi8>
      %or = "tosa.logical_or"(%and, %arg1) : (tensor<4x8xi8>, tensor<4x8xi8>) -> tensor<4x8xi8>
      "func.return"(%or) : (tensor<4x8xi8>) -> ()
  }) : () -> ()
}) : () -> ()