"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}, {secret.secret}], function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "rotate_and_add"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<[10, 20, 30, 40]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "tensor_ext.rotate"(%arg0, %arg1) : (tensor<4xi32>, i32) -> tensor<4xi32>
    %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%1, %3) : (tensor<4xi32>, index) -> i32
    %5 = "arith.addi"(%4, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "tensor.insert"(%5, %1, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%6) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()