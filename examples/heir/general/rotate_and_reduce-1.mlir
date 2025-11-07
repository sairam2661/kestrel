"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> i32, sym_name = "simple_sum_two_tensor"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %5 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, index) -> i32
    %9 = "tensor.extract"(%arg1, %1) : (tensor<4xi32>, index) -> i32
    %10 = "tensor.extract"(%arg1, %2) : (tensor<4xi32>, index) -> i32
    %11 = "tensor.extract"(%arg1, %3) : (tensor<4xi32>, index) -> i32
    %12 = "arith.addi"(%4, %5) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %13 = "arith.addi"(%12, %6) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %14 = "arith.addi"(%13, %7) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %15 = "arith.addi"(%14, %8) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %16 = "arith.addi"(%15, %9) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %17 = "arith.addi"(%16, %10) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %18 = "arith.addi"(%17, %11) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "func.return"(%18) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

