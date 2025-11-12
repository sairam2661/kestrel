"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> i32, sym_name = "complex_tensor_sum"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %9 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %10 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %11 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %12 = "tensor.extract"(%arg1, %4) : (tensor<4xi32>, index) -> i32
    %13 = "tensor.extract"(%arg1, %5) : (tensor<4xi32>, index) -> i32
    %14 = "tensor.extract"(%arg1, %6) : (tensor<4xi32>, index) -> i32
    %15 = "tensor.extract"(%arg1, %7) : (tensor<4xi32>, index) -> i32
    %16 = "arith.addi"(%8, %9) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %17 = "arith.addi"(%16, %10) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %18 = "arith.addi"(%17, %11) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %19 = "arith.addi"(%18, %12) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %20 = "arith.addi"(%19, %13) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %21 = "arith.addi"(%20, %14) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %22 = "arith.addi"(%21, %15) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    "func.return"(%22) : (i32) -> ()
  }) : () -> ()
}) : () -> ()