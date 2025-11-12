"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_combinations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "arith.constant"() <{value = 5 : index}> : () -> index
    %3 = "tensor.insert"(%arg0, %1, %0) : (tensor<4xi32>, i32, index) -> tensor<4xi32>
    %4 = "tensor.insert"(%arg1, %2, %1) : (tensor<4xi32>, i32, index) -> tensor<4xi32>
    %5 = "arith.addf"(%3, %4) <{overflowFlags = #arith_overflow} > : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %6 = "tensor.extract"(%5, %0) : (tensor<4xi32>, index) -> i32
    %7 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %8 = "arith.muli"(%6, %7) <{overflowFlags = #arith_overflow} > : (i32, i32) -> i32
    %9 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %10 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflow} > : (i32, i32) -> i32
    %11 = "tensor.insert"(%5, %10, %2) : (tensor<4xi32>, i32, index) -> tensor<4xi32>
    %12 = "func.return"(%11) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()