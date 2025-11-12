"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_insert_extract_mixed"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %5 = "tensor.insert"(%arg0, %4, %0) : (tensor<4xi32>, i32, index) -> tensor<4xi32>
    %6 = "tensor.insert"(%5, %4, %1) : (tensor<4xi32>, i32, index) -> tensor<4xi32>
    %7 = "tensor.insert"(%6, %4, %2) : (tensor<4xi32>, i32, index) -> tensor<4xi32>
    %8 = "tensor.insert"(%7, %4, %3) : (tensor<4xi32>, i32, index) -> tensor<4xi32>
    %9 = "tensor.extract"(%8, %0) : (tensor<4xi32>, index) -> i32
    %10 = "tensor.extract"(%8, %1) : (tensor<4xi32>, index) -> i32
    %11 = "tensor.extract"(%8, %2) : (tensor<4xi32>, index) -> i32
    %12 = "tensor.extract"(%8, %3) : (tensor<4xi32>, index) -> i32
    %13 = "arith.addi"(%9, %10) <{overflowFlags = #arith_overflow_flags} > : (i32, i32) -> i32
    %14 = "arith.addi"(%13, %11) <{overflowFlags = #arith_overflow_flags} > : (i32, i32) -> i32
    %15 = "arith.addi"(%14, %12) <{overflowFlags = #arith_overflow_flags} > : (i32, i32) -> i32
    "func.return"(%15) : (i32) -> ()
  }) : () -> ()
}) : () -> ()