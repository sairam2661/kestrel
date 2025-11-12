"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> i32, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "tensor.extract"(%arg0, %0) : (tensor<10xi32>, index) -> i32
    %4 = "tensor.extract"(%arg0, %1) : (tensor<10xi32>, index) -> i32
    %5 = "tensor.extract"(%arg0, %2) : (tensor<10xi32>, index) -> i32
    %6 = "tensor.extract"(%arg1, %0) : (tensor<10xi32>, index) -> i32
    %7 = "tensor.extract"(%arg1, %1) : (tensor<10xi32>, index) -> i32
    %8 = "tensor.extract"(%arg1, %2) : (tensor<10xi32>, index) -> i32
    %9 = "arith.addi"(%3, %6) <{overflowFlags = #arith_overflowed}> : (i32, i32) -> i32
    %10 = "arith.addi"(%4, %7) <{overflowFlags = #arith_overflowed}> : (i32, i32) -> i32
    %11 = "arith.addi"(%5, %8) <{overflowFlags = #arith_overflowed}> : (i32, i32) -> i32
    %12 = "arith.muli"(%9, %10) <{overflowFlags = #arith_overflowed}> : (i32, i32) -> i32
    %13 = "arith.addi"(%12, %11) <{overflowFlags = #arith_overflowed}> : (i32, i32) -> i32
    "func.return"(%13) : (i32) -> ()
  }) : () -> ()
}) : () -> ()