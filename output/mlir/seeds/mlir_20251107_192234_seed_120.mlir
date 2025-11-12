"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "test_permute"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4x4xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %7 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %8 = "arith.constant"() <{value = 9 : i32}> : () -> i32
    %9 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %10 = "arith.constant"() <{value = 11 : i32}> : () -> i32
    %11 = "arith.constant"() <{value = 12 : i32}> : () -> i32
    %12 = "arith.constant"() <{value = 13 : i32}> : () -> i32
    %13 = "arith.constant"() <{value = 14 : i32}> : () -> i32
    %14 = "arith.constant"() <{value = 15 : i32}> : () -> i32
    %15 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %16 = "tensor.insert"(%0, %arg1, %1, %2) : (i32, tensor<4x4xi32>, i32, i32) -> tensor<4x4xi32>
    %17 = "tensor.insert"(%1, %16, %3, %4) : (i32, tensor<4x4xi32>, i32, i32) -> tensor<4x4xi32>
    %18 = "tensor.insert"(%2, %17, %5, %6) : (i32, tensor<4x4xi32>, i32, i32) -> tensor<4x4xi32>
    %19 = "tensor.insert"(%3, %18, %7, %8) : (i32, tensor<4x4xi32>, i32, i32) -> tensor<4x4xi32>
    %20 = "tensor.insert"(%4, %19, %9, %10) : (i32, tensor<4x4xi32>, i32, i32) -> tensor<4x4xi32>
    %21 = "tensor.insert"(%5, %20, %11, %12) : (i32, tensor<4x4xi32>, i32, i32) -> tensor<4x4xi32>
    %22 = "tensor.insert"(%6, %21, %13, %14) : (i32, tensor<4x4xi32>, i32, i32) -> tensor<4x4xi32>
    %23 = "tensor.insert"(%7, %22, %15, %16) : (i32, tensor<4x4xi32>, i32, i32) -> tensor<4x4xi32>
    "func.return"(%23) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()