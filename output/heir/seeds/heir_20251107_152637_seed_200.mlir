"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_rot_and_arith"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "tensor_ext.rotate"(%arg0, %0) <{shift = 4}> : (tensor<16xi32>, i32) -> tensor<16xi32>
    %3 = "tensor_ext.rotate"(%arg1, %1) <{shift = 8}> : (tensor<16xi32>, i32) -> tensor<16xi32>
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflow_overflow}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.muli"(%4, %2) <{overflowFlags = #arith_overflow_overflow}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.subi"(%5, %3) <{overflowFlags = #arith_overflow_overflow}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "func.return"(%6) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()