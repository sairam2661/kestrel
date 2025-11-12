"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, i32) -> (tensor<8xi32>, i32), sym_name = "modify_tensor"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "arith.constant"() <{value = 5 : index}> : () -> index
    %5 = "arith.constant"() <{value = 6 : index}> : () -> index
    %6 = "arith.constant"() <{value = 7 : index}> : () -> index
    %7 = "arith.constant"() <{value = 8 : index}> : () -> index
    %8 = "tensor.extract"(%arg0, %0) : (tensor<8xi32>, index) -> i32
    %9 = "tensor.extract"(%arg0, %1) : (tensor<8xi32>, index) -> i32
    %10 = "tensor.extract"(%arg0, %2) : (tensor<8xi32>, index) -> i32
    %11 = "tensor.extract"(%arg0, %3) : (tensor<8xi32>, index) -> i32
    %12 = "tensor.extract"(%arg0, %4) : (tensor<8xi32>, index) -> i32
    %13 = "tensor.extract"(%arg0, %5) : (tensor<8xi32>, index) -> i32
    %14 = "tensor.extract"(%arg0, %6) : (tensor<8xi32>, index) -> i32
    %15 = "tensor.extract"(%arg0, %7) : (tensor<8xi32>, index) -> i32
    %16 = "arith.addi"(%arg1, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %17 = "arith.addi"(%16, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %18 = "arith.addi"(%17, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %19 = "arith.addi"(%18, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %20 = "arith.addi"(%19, %12) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %21 = "arith.addi"(%20, %13) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %22 = "arith.addi"(%21, %14) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %23 = "arith.addi"(%22, %15) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %24 = "tensor.insert"(%23, %arg0, %0) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %25 = "tensor.insert"(%23, %24, %1) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %26 = "tensor.insert"(%23, %25, %2) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %27 = "tensor.insert"(%23, %26, %3) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %28 = "tensor.insert"(%23, %27, %4) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %29 = "tensor.insert"(%23, %28, %5) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %30 = "tensor.insert"(%23, %29, %6) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %31 = "tensor.insert"(%23, %30, %7) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%31, %23) : (tensor<8xi32>, i32) -> ()
  }) : () -> ()
}) : () -> ()