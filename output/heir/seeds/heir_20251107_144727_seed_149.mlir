"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> i32, sym_name = "tensor_sum"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, i32) -> i32
    %2 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, i32) -> i32
    %3 = "arith.addi"(%1, %2) : (i32, i32) -> i32
    %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "tensor.extract"(%arg0, %4) : (tensor<4xi32>, i32) -> i32
    %6 = "tensor.extract"(%arg1, %4) : (tensor<4xi32>, i32) -> i32
    %7 = "arith.addi"(%5, %6) : (i32, i32) -> i32
    %8 = "arith.addi"(%3, %7) : (i32, i32) -> i32
    %9 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %10 = "tensor.extract"(%arg0, %9) : (tensor<4xi32>, i32) -> i32
    %11 = "tensor.extract"(%arg1, %9) : (tensor<4xi32>, i32) -> i32
    %12 = "arith.addi"(%10, %11) : (i32, i32) -> i32
    %13 = "arith.addi"(%8, %12) : (i32, i32) -> i32
    %14 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %15 = "tensor.extract"(%arg0, %14) : (tensor<4xi32>, i32) -> i32
    %16 = "tensor.extract"(%arg1, %14) : (tensor<4xi32>, i32) -> i32
    %17 = "arith.addi"(%15, %16) : (i32, i32) -> i32
    %18 = "arith.addi"(%13, %17) : (i32, i32) -> i32
    "func.return"(%18) : (i32) -> ()
  }) : () -> ()
}) : () -> ()