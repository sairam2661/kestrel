"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_i8, !secret_secret_i8) -> !secret_secret_i8, sym_name = "xor_cipher"}> ({
  ^bb0(%arg0: !secret_secret_i8, %arg1: !secret_secret_i8):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    %3 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<1xi8>, %arg3: tensor<1xi8>):
      %4 = "arith.xori"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<1xi8>, tensor<1xi8>) -> tensor<1xi8>
      %5 = "tensor.extract"(%4, %0) : (tensor<1xi8>, index) -> i8
      "secret.yield"(%5) : (i8) -> ()
    }) : (!secret_secret_i8, !secret_secret_i8) -> !secret_secret_i8
    "func.return"(%3) : (!secret_secret_i8) -> ()
  }) : () -> ()
}) : () -> ()