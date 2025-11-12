"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, !secret_secret, !secret_secret) -> !secret_secret, sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: !secret_secret, %arg2: !secret_secret):
    %0 = "secret_generic"(%arg0, %arg1) ({
    ^bb0(%arg3: tensor<16xi32>, %arg4: tensor<16xi32>):
      %1 = "arith_addi"(%arg3, %arg4) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "secret_yield"(%1) : (tensor<16xi32>) -> ()
    }) : (!secret_secret, !secret_secret) -> !secret_secret
    %2 = "secret_generic"(%0, %arg2) ({
    ^bb0(%arg5: tensor<16xi32>, %arg6: tensor<16xi32>):
      %3 = "arith_muli"(%arg5, %arg6) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "secret_yield"(%3) : (tensor<16xi32>) -> ()
    }) : (!secret_secret, !secret_secret) -> !secret_secret
    "func_return"(%2) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()