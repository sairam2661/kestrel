"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "tensor_rotate_and_add"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>, %arg2: i32):
    %0 = "tensor_ext.rotate"(%arg0, %arg2) <{axis = 0}> : (tensor<4xi32>, i32) -> tensor<4xi32>
    %1 = "tensor_ext.rotate"(%arg1, %arg2) <{axis = 0}> : (tensor<4xi32>, i32) -> tensor<4xi32>
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "arith.constant"() <{value = 2 : index}> : () -> index
    %5 = "arith.constant"() <{value = 3 : index}> : () -> index
    %6 = "tensor.extract"(%0, %2) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%0, %3) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%0, %4) : (tensor<4xi32>, index) -> i32
    %9 = "tensor.extract"(%0, %5) : (tensor<4xi32>, index) -> i32
    %10 = "tensor.extract"(%1, %2) : (tensor<4xi32>, index) -> i32
    %11 = "tensor.extract"(%1, %3) : (tensor<4xi32>, index) -> i32
    %12 = "tensor.extract"(%1, %4) : (tensor<4xi32>, index) -> i32
    %13 = "tensor.extract"(%1, %5) : (tensor<4xi32>, index) -> i32
    %14 = "arith.addi"(%6, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %15 = "arith.addi"(%7, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %16 = "arith.addi"(%8, %12) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %17 = "arith.addi"(%9, %13) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %18 = "tensor.insert"(%14, %arg0, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %19 = "tensor.insert"(%15, %18, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %20 = "tensor.insert"(%16, %19, %4) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %21 = "tensor.insert"(%17, %20, %5) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%21) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()