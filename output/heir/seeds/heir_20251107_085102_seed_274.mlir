"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_tensor_op_chain"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %5 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, index) -> i32
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%arg1, %1) : (tensor<4xi32>, index) -> i32
    %9 = "arith.addi"(%7, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %11 = "tensor.extract"(%arg1, %2) : (tensor<4xi32>, index) -> i32
    %12 = "arith.addi"(%10, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %13 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %14 = "tensor.extract"(%arg1, %3) : (tensor<4xi32>, index) -> i32
    %15 = "arith.addi"(%13, %14) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %16 = "secret.conceal"(%6) : (i32) -> !secret_secret_i32
    %17 = "secret.conceal"(%9) : (i32) -> !secret_secret_i32
    %18 = "secret.conceal"(%12) : (i32) -> !secret_secret_i32
    %19 = "secret.conceal"(%15) : (i32) -> !secret_secret_i32
    %20 = "tensor.constant"() <{value = dense<[[0, 0, 0, 0]]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %21 = "tensor.insert"(%16, %20, %0) : (!secret_secret_i32, tensor<4xi32>, index) -> tensor<4xi32>
    %22 = "tensor.insert"(%17, %21, %1) : (!secret_secret_i32, tensor<4xi32>, index) -> tensor<4xi32>
    %23 = "tensor.insert"(%18, %22, %2) : (!secret_secret_i32, tensor<4xi32>, index) -> tensor<4xi32>
    %24 = "tensor.insert"(%19, %23, %3) : (!secret_secret_i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%24) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()