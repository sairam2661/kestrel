"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_tensor_1xi8, !secret_secret_tensor_1xi8) -> !secret_secret_tensor_1xi8, sym_name = "xor_combination"}> ({
  ^bb0(%arg0: !secret_secret_tensor_1xi8, %arg1: !secret_secret_tensor_1xi8):
    %0 = "arith.constant"() <{value = 1 : i1}> : () -> i1
    %1 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<1xi8>, %arg3: tensor<1xi8>):
      %4 = "tensor.extract"(%arg2, %0) : (tensor<1xi8>, index) -> i8
      %5 = "tensor.extract"(%arg3, %0) : (tensor<1xi8>, index) -> i8
      %6 = "arith.xori"(%4, %5) <{overflowFlags = #arith_overflow_none}> : (i8, i8) -> i8
      "secret.yield"(%6) : (i8) -> ()
    }) {tensor_ext.layout = #tensor_ext_new_layout} : (!secret_secret_tensor_1xi8, !secret_secret_tensor_1xi8) -> !secret_secret_tensor_1xi8
    "func.return"(%1) : (!secret_secret_tensor_1xi8) -> ()
  }) : () -> ()
}) : () -> ()