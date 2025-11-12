"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_tensor_rotation_and_addition"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %9 = "tensor_ext.rotate"(%arg0, %4) : (tensor<4xi32>, index) -> tensor<4xi32>
    %10 = "tensor.extract"(%9, %0) : (tensor<4xi32>, index) -> i32
    %11 = "tensor.extract"(%9, %1) : (tensor<4xi32>, index) -> i32
    %12 = "tensor.extract"(%9, %2) : (tensor<4xi32>, index) -> i32
    %13 = "tensor.extract"(%9, %3) : (tensor<4xi32>, index) -> i32
    %14 = "arith.addi"(%5, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %15 = "arith.addi"(%6, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %16 = "arith.addi"(%7, %12) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %17 = "arith.addi"(%8, %13) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %18 = "tensor.insert"(%14, %arg1, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %19 = "tensor.insert"(%15, %18, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %20 = "tensor.insert"(%16, %19, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %21 = "tensor.insert"(%17, %20, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%21) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()