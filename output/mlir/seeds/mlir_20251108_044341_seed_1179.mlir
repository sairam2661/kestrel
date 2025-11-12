"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi8>) -> tensor<16xi8>, sym_name = "bitwise_xor_complexity"}> ({
  ^bb0(%arg0: tensor<16xi8>):
    %0 = "tosa.const"() <{value = dense<255> : tensor<16xi8>}> : () -> tensor<16xi8>
    %1 = "tosa.cast"(%arg0) : (tensor<16xi8>) -> tensor<16xi32>
    %2 = "tosa.cast"(%0) : (tensor<16xi8>) -> tensor<16xi32>
    %3 = "tosa.bitwise_xor"(%1, %2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "tosa.cast"(%3) : (tensor<16xi32>) -> tensor<16xi8>
    "func.return"(%4) : (tensor<16xi8>) -> ()
  }) : () -> ()
}) : () -> ()