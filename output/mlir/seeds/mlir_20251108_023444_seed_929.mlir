"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi8>, tensor<10xi8>) -> tensor<10xi8>, sym_name = "xor_with_large_tensors"}> ({
  ^bb0(%arg0: tensor<10xi8>, %arg1: tensor<10xi8>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<10xi8>}> : () -> tensor<10xi8>
    %1 = "arith.xor"(%arg0, %0) : (tensor<10xi8>, tensor<10xi8>) -> tensor<10xi8>
    %2 = "arith.xor"(%1, %arg1) : (tensor<10xi8>, tensor<10xi8>) -> tensor<10xi8>
    "func.return"(%2) : (tensor<10xi8>) -> ()
  }) : () -> ()
}) : () -> ()