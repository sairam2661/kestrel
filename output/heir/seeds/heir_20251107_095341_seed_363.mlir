"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi32>, i32) -> (i32, tensor<5xi32>), sym_name = "complex_arithmetic_and_rotation"}> ({
  ^bb0(%arg0: tensor<5xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "arith.constant"() <{value = 5 : index}> : () -> index
    %5 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %7 = "tensor_ext.rotate"(%arg0, %0) : (tensor<5xi32>, index) -> tensor<5xi32>
    %8 = "tensor.extract"(%arg0, %1) : (tensor<5xi32>, index) -> i32
    %9 = "tensor.extract"(%arg0, %2) : (tensor<5xi32>, index) -> i32
    %10 = "tensor.extract"(%arg0, %3) : (tensor<5xi32>, index) -> i32
    %11 = "tensor.extract"(%arg0, %4) : (tensor<5xi32>, index) -> i32
    %12 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %13 = "arith.addi"(%12, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %14 = "arith.addi"(%13, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %15 = "arith.addi"(%14, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %16 = "arith.addi"(%15, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %17 = "arith.addi"(%16, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %18 = "tensor_ext.rotate"(%7, %0) : (tensor<5xi32>, index) -> tensor<5xi32>
    "func.return"(%17, %18) : (i32, tensor<5xi32>) -> ()
  }) : () -> ()
}) : () -> ()