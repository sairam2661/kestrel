"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_tensor_8xi8, !secret_secret_tensor_8xi8) -> !secret_secret_tensor_8xi8, sym_name = "rotate_and_add"}> ({
  ^bb0(%arg0: !secret_secret_tensor_8xi8, %arg1: !secret_secret_tensor_8xi8):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg2: tensor<8xi8>):
      %1 = "tensor_ext.rotate"(%arg2) <{amount = 3 : i64}> : (tensor<8xi8>) -> tensor<8xi8>
      "secret.yield"(%1) : (tensor<8xi8>) -> ()
    }) : (!secret_secret_tensor_8xi8) -> !secret_secret_tensor_8xi8
    %2 = "secret.generic"(%arg1) ({
    ^bb0(%arg3: tensor<8xi8>):
      %4 = "tensor_ext.rotate"(%arg3) <{amount = 5 : i64}> : (tensor<8xi8>) -> tensor<8xi8>
      "secret.yield"(%4) : (tensor<8xi8>) -> ()
    }) : (!secret_secret_tensor_8xi8) -> !secret_secret_tensor_8xi8
    %5 = "secret.generic"(%0, %2) ({
    ^bb0(%arg4: tensor<8xi8>, %arg5: tensor<8xi8>):
      %6 = "arith.add"(%arg4, %arg5) : (tensor<8xi8>, tensor<8xi8>) -> tensor<8xi8>
      "secret.yield"(%6) : (tensor<8xi8>) -> ()
    }) : (!secret_secret_tensor_8xi8, !secret_secret_tensor_8xi8) -> !secret_secret_tensor_8xi8
    "func.return"(%5) : (!secret_secret_tensor_8xi8) -> ()
  }) : () -> ()
}) : () -> ()