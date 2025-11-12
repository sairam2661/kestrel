"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_sum_and_shift"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %5 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %9 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, index) -> i32
    %10 = "tensor.extract"(%arg1, %1) : (tensor<4xi32>, index) -> i32
    %11 = "tensor.extract"(%arg1, %2) : (tensor<4xi32>, index) -> i32
    %12 = "tensor.extract"(%arg1, %3) : (tensor<4xi32>, index) -> i32
    %13 = "arith.addi"(%5, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %14 = "arith.addi"(%6, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %15 = "arith.addi"(%7, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %16 = "arith.addi"(%8, %12) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %17 = "arith.addi"(%13, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %18 = "arith.addi"(%14, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %19 = "arith.addi"(%15, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %20 = "arith.addi"(%16, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %21 = "tensor.from_elements"() <{elements = [#elements_attribute_body_dense, #elements_attribute_body_dense, #elements_attribute_body_dense, #elements_attribute_body_dense]}> : () -> tensor<4xi32>
    "func.return"(%21) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()