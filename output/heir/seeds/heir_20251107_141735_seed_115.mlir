"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "matrix_addition"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %7 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %8 = "tensor.extract"(%arg0, %0, %0) : (tensor<2x2xi32>, i32, i32) -> i32
    %9 = "tensor.extract"(%arg0, %0, %1) : (tensor<2x2xi32>, i32, i32) -> i32
    %10 = "tensor.extract"(%arg0, %1, %0) : (tensor<2x2xi32>, i32, i32) -> i32
    %11 = "tensor.extract"(%arg0, %1, %1) : (tensor<2x2xi32>, i32, i32) -> i32
    %12 = "tensor.extract"(%arg1, %0, %0) : (tensor<2x2xi32>, i32, i32) -> i32
    %13 = "tensor.extract"(%arg1, %0, %1) : (tensor<2x2xi32>, i32, i32) -> i32
    %14 = "tensor.extract"(%arg1, %1, %0) : (tensor<2x2xi32>, i32, i32) -> i32
    %15 = "tensor.extract"(%arg1, %1, %1) : (tensor<2x2xi32>, i32, i32) -> i32
    %16 = "arith.addi"(%8, %12) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %17 = "arith.addi"(%9, %13) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %18 = "arith.addi"(%10, %14) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %19 = "arith.addi"(%11, %15) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %20 = "tensor.insert"(%16, %arg0, %0, %0) : (i32, tensor<2x2xi32>, i32, i32) -> tensor<2x2xi32>
    %21 = "tensor.insert"(%17, %20, %0, %1) : (i32, tensor<2x2xi32>, i32, i32) -> tensor<2x2xi32>
    %22 = "tensor.insert"(%18, %21, %1, %0) : (i32, tensor<2x2xi32>, i32, i32) -> tensor<2x2xi32>
    %23 = "tensor.insert"(%19, %22, %1, %1) : (i32, tensor<2x2xi32>, i32, i32) -> tensor<2x2xi32>
    "func.return"(%23) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()