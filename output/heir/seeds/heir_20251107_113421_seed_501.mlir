"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>, i32) -> tensor<3xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "tensor.extract"(%arg0, %0) : (tensor<3xi32>, index) -> i32
    %4 = "tensor.extract"(%arg0, %1) : (tensor<3xi32>, index) -> i32
    %5 = "tensor.extract"(%arg0, %2) : (tensor<3xi32>, index) -> i32
    %6 = "arith.addi"(%3, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.addi"(%4, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "arith.addi"(%5, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%6, %arg0, %0) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    %10 = "tensor.insert"(%7, %9, %1) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    %11 = "tensor.insert"(%8, %10, %2) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    "func.return"(%11) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()