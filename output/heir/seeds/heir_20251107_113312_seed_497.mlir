"builtin.module"() ({
  "func.func"() <{
    function_type = (!secret_secret_tensor_1xi8, !secret_secret_tensor_1xi8) -> !secret_secret_tensor_1xi8,
    sym_name = "tensor_xor"
  }> ({
    ^bb0(%arg0: !secret_secret_tensor_1xi8, %arg1: !secret_secret_tensor_1xi8):
      %0 = "secret.generic"(%arg0, %arg1) ({
        ^bb0(%arg2: tensor<1xi8>, %arg3: tensor<1xi8>):
          %1 = "arith.xori"(%arg2, %arg3) : (tensor<1xi8>, tensor<1xi8>) -> tensor<1xi8>
          "secret.yield"(%1) : (tensor<1xi8>) -> ()
      }) : (!secret_secret_tensor_1xi8, !secret_secret_tensor_1xi8) -> !secret_secret_tensor_1xi8
      "func.return"(%0) : (!secret_secret_tensor_1xi8) -> ()
  }) : () -> ()
}) : () -> ()