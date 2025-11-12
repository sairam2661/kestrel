"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "tensor_and_scalar_complex"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.muli"(%arg1, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "arith.constant"() <{value = 2 : index}> : () -> index
    %5 = "arith.constant"() <{value = 3 : index}> : () -> index
    %6 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %7 = "arith.addi"(%6, %1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %8 = "tensor.insert"(%7, %arg0, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %9 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %10 = "arith.addi"(%9, %1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %11 = "tensor.insert"(%10, %8, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %12 = "tensor.extract"(%arg0, %4) : (tensor<4xi32>, index) -> i32
    %13 = "arith.addi"(%12, %1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %14 = "tensor.insert"(%13, %11, %4) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %15 = "tensor.extract"(%arg0, %5) : (tensor<4xi32>, index) -> i32
    %16 = "arith.addi"(%15, %1) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %17 = "tensor.insert"(%16, %14, %5) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%17) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()