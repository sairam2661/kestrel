"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_complex_op"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.addi"(%1, %arg0) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "secret.generic"() ({
      ^bb0(%arg2: tensor<16xi32>):
        %4 = "arith.subi"(%arg2, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        %5 = "arith.addi"(%4, %2) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "secret.yield"(%5) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi32>) -> tensor<16xi32>
    "func.return"(%3) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()