"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x2xi32>, tensor<4x2xi64>) -> tensor<4x2xi8>, sym_name = "tensor_conversion_complex"}> ({
  ^bb0(%arg0: tensor<4x2xi32>, %arg1: tensor<4x2xi64>):
    %0 = "tosa.cast"(%arg0) : (tensor<4x2xi32>) -> tensor<4x2xi8>
    %1 = "tosa.cast"(%arg1) : (tensor<4x2xi64>) -> tensor<4x2xi8>
    %2 = "arith.addi"(%0, %1) : (tensor<4x2xi8>, tensor<4x2xi8>) -> tensor<4x2xi8>
    "func.return"(%2) : (tensor<4x2xi8>) -> ()
  }) : () -> ()
}) : () -> ()