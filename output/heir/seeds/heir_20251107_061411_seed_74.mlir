"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "rotate_test"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "tensor_ext.rotate"(%arg0, %arg1) : (tensor<4xi32>, i32) -> tensor<4xi32>
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "tensor_ext.rotate"(%arg0, %2) : (tensor<4xi32>, i32) -> tensor<4xi32>
    %4 = "arith.muli"(%arg1, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor_ext.rotate"(%arg0, %4) : (tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()