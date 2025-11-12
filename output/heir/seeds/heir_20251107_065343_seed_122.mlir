"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_add_with_constant"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %4 = "tensor.insert"(%0, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %5 = "tensor.insert"(%1, %4, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %6 = "tensor.insert"(%2, %5, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %7 = "tensor.insert"(%3, %6, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %8 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %9 = "arith.addi"(%7, %8) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%9) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()