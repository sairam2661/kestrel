"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, i32) -> tensor<8xi32>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %9 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %10 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %11 = "tensor.extract"(%arg0, %0) : (tensor<8xi32>, index) -> i32
    %12 = "arith.addi"(%11, %8) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %13 = "tensor.insert"(%12, %arg0, %0) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %14 = "tensor.extract"(%arg0, %1) : (tensor<8xi32>, index) -> i32
    %15 = "arith.addi"(%14, %9) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %16 = "tensor.insert"(%15, %13, %1) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %17 = "tensor.extract"(%arg0, %2) : (tensor<8xi32>, index) -> i32
    %18 = "arith.addi"(%17, %10) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %19 = "tensor.insert"(%18, %16, %2) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %20 = "tensor.extract"(%arg0, %3) : (tensor<8xi32>, index) -> i32
    %21 = "arith.addi"(%20, %10) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %22 = "tensor.insert"(%21, %19, %3) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %23 = "tensor.extract"(%arg0, %4) : (tensor<8xi32>, index) -> i32
    %24 = "arith.addi"(%23, %9) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %25 = "tensor.insert"(%24, %22, %4) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %26 = "tensor.extract"(%arg0, %5) : (tensor<8xi32>, index) -> i32
    %27 = "arith.addi"(%26, %8) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %28 = "tensor.insert"(%27, %25, %5) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %29 = "tensor.extract"(%arg0, %6) : (tensor<8xi32>, index) -> i32
    %30 = "arith.addi"(%29, %10) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %31 = "tensor.insert"(%30, %28, %6) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %32 = "tensor.extract"(%arg0, %7) : (tensor<8xi32>, index) -> i32
    %33 = "arith.addi"(%32, %9) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %34 = "tensor.insert"(%33, %31, %7) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%34) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()