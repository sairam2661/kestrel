"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_and_arith_mixed"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %c4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %c5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %c6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %c7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %c8 = "arith.constant"() <{value = 8 : index}> : () -> index
    %c9 = "arith.constant"() <{value = 9 : index}> : () -> index
    %c10 = "arith.constant"() <{value = 10 : index}> : () -> index
    %c11 = "arith.constant"() <{value = 11 : index}> : () -> index
    %c12 = "arith.constant"() <{value = 12 : index}> : () -> index
    %c13 = "arith.constant"() <{value = 13 : index}> : () -> index
    %c14 = "arith.constant"() <{value = 14 : index}> : () -> index
    %c15 = "arith.constant"() <{value = 15 : index}> : () -> index
    %0 = "tensor.extract"(%arg0, %c0) : (tensor<2xi32>, index) -> i32
    %1 = "tensor.extract"(%arg0, %c1) : (tensor<2xi32>, index) -> i32
    %2 = "tensor.extract"(%arg0, %c2) : (tensor<2xi32>, index) -> i32
    %3 = "tensor.extract"(%arg0, %c3) : (tensor<2xi32>, index) -> i32
    %4 = "tensor.extract"(%arg1, %c0) : (tensor<2xi32>, index) -> i32
    %5 = "tensor.extract"(%arg1, %c1) : (tensor<2xi32>, index) -> i32
    %6 = "tensor.extract"(%arg1, %c2) : (tensor<2xi32>, index) -> i32
    %7 = "tensor.extract"(%arg1, %c3) : (tensor<2xi32>, index) -> i32
    %8 = "arith.addi"(%0, %4) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %9 = "arith.addi"(%1, %5) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %10 = "arith.addi"(%2, %6) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %11 = "arith.addi"(%3, %7) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %12 = "tensor.insert"(%8, %arg0, %c0) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    %13 = "tensor.insert"(%9, %12, %c1) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    %14 = "tensor.insert"(%10, %13, %c2) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    %15 = "tensor.insert"(%11, %14, %c3) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    "func.return"(%15) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()