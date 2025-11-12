"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_tensor_16, !secret_secret_index) -> !secret_secret_tensor_16, sym_name = "nested_secret_operations"}> ({
  ^bb0(%arg0: !secret_secret_tensor_16, %arg1: !secret_secret_index):
    %0 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %1 = "secret.generic"(%arg0, %arg1) ({
    ^bb1(%arg2: tensor<16xi16>, %arg3: index):
      %2 = "tensor.extract"(%arg2, %arg3) : (tensor<16xi16>, index) -> i16
      %3 = "arith.addi"(%2, %0) <{overflowFlags = #arith_overflow_none}> : (i16, i16) -> i16
      %4 = "tensor.insert"(%3, %arg2, %arg3) : (i16, tensor<16xi16>, index) -> tensor<16xi16>
      "secret.yield"(%4) : (tensor<16xi16>) -> ()
    }) : (!secret_secret_tensor_16, !secret_secret_index) -> !secret_secret_tensor_16
    %5 = "secret.generic"(%1, %arg1) ({
    ^bb2(%arg4: tensor<16xi16>, %arg5: index):
      %6 = "tensor.extract"(%arg4, %arg5) : (tensor<16xi16>, index) -> i16
      %7 = "arith.muli"(%6, %0) <{overflowFlags = #arith_overflow_none}> : (i16, i16) -> i16
      %8 = "tensor.insert"(%7, %arg4, %arg5) : (i16, tensor<16xi16>, index) -> tensor<16xi16>
      "secret.yield"(%8) : (tensor<16xi16>) -> ()
    }) : (!secret_secret_tensor_16, !secret_secret_index) -> !secret_secret_tensor_16
    "func.return"(%5) : (!secret_secret_tensor_16) -> ()
  }) : () -> ()
}) : () -> ()