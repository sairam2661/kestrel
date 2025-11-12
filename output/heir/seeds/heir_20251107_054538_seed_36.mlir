"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "tensor_shuffle"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %3 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %4 = "arith.addi"(%arg1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.addi"(%4, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.constant"() <{value = 0 : index}> : () -> index
    %7 = "tensor.insert"(%5, %arg0, %6) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%7) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()