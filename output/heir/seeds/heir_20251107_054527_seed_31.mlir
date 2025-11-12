"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> i32, sym_name = "tensor_sum_and_modify"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %5 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %9 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "arith.addi"(%9, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "arith.addi"(%10, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %12 = "arith.addi"(%11, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %13 = "arith.muli"(%12, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%13) : (i32) -> ()
  }) : () -> ()
}) : () -> ()