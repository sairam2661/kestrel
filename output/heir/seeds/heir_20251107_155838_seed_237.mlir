"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>, i32) -> i32, sym_name = "tensor_mixed_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %5 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg1, %1) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%arg1, %3) : (tensor<4xi32>, index) -> i32
    %9 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "arith.addi"(%7, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "arith.addi"(%9, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %12 = "arith.addi"(%11, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%12) : (i32) -> ()
  }) : () -> ()
}) : () -> ()