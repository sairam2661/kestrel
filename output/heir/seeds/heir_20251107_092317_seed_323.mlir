"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %7 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %8 = "tensor.extract"(%arg0, %0) : (tensor<8xi32>, i32) -> i32
    %9 = "tensor.extract"(%arg0, %1) : (tensor<8xi32>, i32) -> i32
    %10 = "tensor.extract"(%arg1, %2) : (tensor<8xi32>, i32) -> i32
    %11 = "tensor.extract"(%arg0, %3) : (tensor<8xi32>, i32) -> i32
    %12 = "tensor.extract"(%arg0, %4) : (tensor<8xi32>, i32) -> i32
    %13 = "tensor.extract"(%arg0, %5) : (tensor<8xi32>, i32) -> i32
    %14 = "tensor.extract"(%arg0, %6) : (tensor<8xi32>, i32) -> i32
    %15 = "tensor.extract"(%arg0, %7) : (tensor<8xi32>, i32) -> i32
    %16 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %17 = "arith.addi"(%16, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %18 = "arith.addi"(%17, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %19 = "arith.addi"(%18, %12) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %20 = "arith.addi"(%19, %13) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %21 = "arith.addi"(%20, %14) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %22 = "arith.addi"(%21, %15) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %23 = "tensor.insert"(%22, %arg1, %0) : (i32, tensor<8xi32>, i32) -> tensor<8xi32>
    "func.return"(%23) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()