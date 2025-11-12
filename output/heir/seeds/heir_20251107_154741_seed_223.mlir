"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_operations"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 15 : i32}> : () -> i32

    %3 = "tensor.insert"(%0, %arg0, %1) <{indices = [5]}> : (i32, tensor<16xi32>, index) -> tensor<16xi32>
    %4 = "tensor.insert"(%1, %3, %2) <{indices = [10]}> : (i32, tensor<16xi32>, index) -> tensor<16xi32>
    %5 = "tensor.insert"(%2, %4, %0) <{indices = [0]}> : (i32, tensor<16xi32>, index) -> tensor<16xi32>

    %6 = "arith.addi"(%5, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %7 = "arith.addi"(%6, %5) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %8 = "arith.addi"(%7, %6) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>

    "func.return"(%8) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()