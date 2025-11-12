"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_mix"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
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
    %16 = "tensor.extract"(%arg1, %0) : (tensor<8xi32>, index) -> i32
    %17 = "tensor.extract"(%arg1, %1) : (tensor<8xi32>, index) -> i32
    %18 = "tensor.extract"(%arg1, %2) : (tensor<8xi32>, index) -> i32
    %19 = "tensor.extract"(%arg1, %3) : (tensor<8xi32>, index) -> i32
    %20 = "tensor.extract"(%arg1, %4) : (tensor<8xi32>, index) -> i32
    %21 = "tensor.extract"(%arg1, %5) : (tensor<8xi32>, index) -> i32
    %22 = "tensor.extract"(%arg1, %6) : (tensor<8xi32>, index) -> i32
    %23 = "tensor.extract"(%arg1, %7) : (tensor<8xi32>, index) -> i32
    %24 = "arith.addi"(%8, %16) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %25 = "arith.addi"(%9, %17) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %26 = "arith.addi"(%10, %18) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %27 = "arith.addi"(%11, %19) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %28 = "arith.addi"(%12, %20) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %29 = "arith.addi"(%13, %21) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %30 = "arith.addi"(%14, %22) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %31 = "arith.addi"(%15, %23) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %32 = "tensor.insert"(%24, %arg0, %0) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %33 = "tensor.insert"(%25, %32, %1) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %34 = "tensor.insert"(%26, %33, %2) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %35 = "tensor.insert"(%27, %34, %3) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %36 = "tensor.insert"(%28, %35, %4) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %37 = "tensor.insert"(%29, %36, %5) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %38 = "tensor.insert"(%30, %37, %6) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %39 = "tensor.insert"(%31, %38, %7) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%39) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()