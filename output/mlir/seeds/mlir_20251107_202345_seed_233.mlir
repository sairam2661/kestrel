"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>, sym_name = "xor_with_constant"}> ({
  ^bb0(%arg0: tensor<2x2xi8>, %arg1: tensor<2x2xi8>):
    %0 = "arith.constant"() <{value = 21 : i8}> : () -> i8
    %1 = "tosa.const"() <{values = dense<21> : tensor<2x2xi8>}> : () -> tensor<2x2xi8>
    %2 = "arith.xori"(%arg0, %0) : (tensor<2x2xi8>, i8) -> tensor<2x2xi8>
    %3 = "tosa.xor"(%2, %1) : (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>
    "func.return"(%3) : (tensor<2x2xi8>) -> ()
  }) : () -> ()
}) : () -> ()