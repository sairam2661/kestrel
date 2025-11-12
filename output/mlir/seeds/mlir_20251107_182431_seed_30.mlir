"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<8x8xi8>, sym_name = "matrix_add_then_concat"}> ({
  ^bb0(%arg0: tensor<4x4xi8>, %arg1: tensor<4x4xi8>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi8>
    %1 = "tosa.concat"(%0, %0) <{axis = 1 : i32}> : (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x8xi8>
    %2 = "tosa.concat"(%1, %1) <{axis = 0 : i32}> : (tensor<4x8xi8>, tensor<4x8xi8>) -> tensor<8x8xi8>
    "func.return"(%2) : (tensor<8x8xi8>) -> ()
  }) : () -> ()
}) : () -> ()