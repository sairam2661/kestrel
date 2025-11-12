"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "tensor_add"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>, %arg2: i32):
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
    %12 = "arith.addi"(%4, %8) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %13 = "arith.addi"(%5, %9) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %14 = "arith.addi"(%6, %10) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %15 = "arith.addi"(%7, %11) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %16 = "tensor.insert"(%12, %0, %arg0) : (i32, index, tensor<4xi32>) -> tensor<4xi32>
    %17 = "tensor.insert"(%13, %1, %16) : (i32, index, tensor<4xi32>) -> tensor<4xi32>
    %18 = "tensor.insert"(%14, %2, %17) : (i32, index, tensor<4xi32>) -> tensor<4xi32>
    %19 = "tensor.insert"(%15, %3, %18) : (i32, index, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%19) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()