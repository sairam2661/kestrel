"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "tensor_add_conceal"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %1 = "secret.conceal"(%arg0) ({
    ^bb0(%arg2: tensor<4xi8>):
      %2 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>, i8) -> tensor<4xi8>
      %3 = "secret.conceal"(%2) ({
      ^bb1(%arg3: tensor<4xi8>):
        %4 = "arith.addi"(%arg3, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
        "secret.yield"(%4) : (tensor<4xi8>) -> ()
      }) : (tensor<4xi8>) -> tensor<4xi8>
      "secret.yield"(%3) : (tensor<4xi8>) -> ()
    }) : (tensor<4xi8>) -> tensor<4xi8>
    "func.return"(%1) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()