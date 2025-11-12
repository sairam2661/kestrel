"builtin.module"() ({
  "func.func"() <{function_type = (!secret_SECRETtensor8xi8, i32) -> !secret_SECRETtensor8xi8, sym_name = "tensor_manipulation_with_arith"}> ({
  ^bb0(%arg0: !secret_SECRETtensor8xi8, %arg1: i32):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<8xi8>, %arg3: i32):
      %1 = "scf.for"(%arg3, %c0_i32, %c8_i32) <{step = 1 : index}> ({
      ^bb1(%iv: index):
        %2 = "tensor.extract"(%arg2, %iv) : (tensor<8xi8>, index) -> i8
        %3 = "arith.addi"(%2, %c5_i8) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
        %4 = "tensor.insert"(%3, %arg2, %iv) : (i8, tensor<8xi8>, index) -> tensor<8xi8>
        "scf.yield"(%4) : (tensor<8xi8>) -> ()
      }) : (tensor<8xi8>, index, index) -> tensor<8xi8>
      "secret.yield"(%1) : (tensor<8xi8>) -> ()
    }) : (!secret_SECRETtensor8xi8, i32) -> !secret_SECRETtensor8xi8
    "func.return"(%0) : (!secret_SECRETtensor8xi8) -> ()
  }) : () -> ()
}) : () -> ()