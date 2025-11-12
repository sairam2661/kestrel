"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret_bool, tensor<8xi32>) -> i32, sym_name = "complex_secret_tensor"}> ({
  ^bb0(%arg0: !secretsecret_bool, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "secret.generic"(%arg0) ({
    ^bb1(%arg2: i1):
      %9 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arith_overflownone}> : (i1, i1) -> i1
      "secret.yield"(%9) : (i1) -> ()
    }) : (!secretsecret_bool) -> !secretsecret_bool
    %10 = "tensor.extract"(%arg1, %0) : (tensor<8xi32>, index) -> i32
    %11 = "tensor.extract"(%arg1, %1) : (tensor<8xi32>, index) -> i32
    %12 = "tensor.extract"(%arg1, %2) : (tensor<8xi32>, index) -> i32
    %13 = "tensor.extract"(%arg1, %3) : (tensor<8xi32>, index) -> i32
    %14 = "tensor.extract"(%arg1, %4) : (tensor<8xi32>, index) -> i32
    %15 = "tensor.extract"(%arg1, %5) : (tensor<8xi32>, index) -> i32
    %16 = "tensor.extract"(%arg1, %6) : (tensor<8xi32>, index) -> i32
    %17 = "tensor.extract"(%arg1, %7) : (tensor<8xi32>, index) -> i32
    %18 = "arith.addi"(%10, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %19 = "arith.addi"(%18, %12) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %20 = "arith.addi"(%19, %13) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %21 = "arith.addi"(%20, %14) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %22 = "arith.addi"(%21, %15) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %23 = "arith.addi"(%22, %16) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %24 = "arith.addi"(%23, %17) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%24) : (i32) -> ()
  }) : () -> ()
}) : () -> ()