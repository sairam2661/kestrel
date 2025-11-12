"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "matrix_add_mixed_dialects"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "tensor.extract"(%arg0, %0, %0) : (tensor<2x2xi32>, index, index) -> i32
    %4 = "tensor.extract"(%arg0, %0, %1) : (tensor<2x2xi32>, index, index) -> i32
    %5 = "tensor.extract"(%arg0, %1, %0) : (tensor<2x2xi32>, index, index) -> i32
    %6 = "tensor.extract"(%arg0, %1, %1) : (tensor<2x2xi32>, index, index) -> i32
    %7 = "tensor.extract"(%arg1, %0, %0) : (tensor<2x2xi32>, index, index) -> i32
    %8 = "tensor.extract"(%arg1, %0, %1) : (tensor<2x2xi32>, index, index) -> i32
    %9 = "tensor.extract"(%arg1, %1, %0) : (tensor<2x2xi32>, index, index) -> i32
    %10 = "tensor.extract"(%arg1, %1, %1) : (tensor<2x2xi32>, index, index) -> i32
    %11 = "arith.addi"(%3, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %12 = "arith.addi"(%4, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %13 = "arith.addi"(%5, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %14 = "arith.addi"(%6, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %15 = "tensor.insert"(%11, %arg0, %0, %0) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    %16 = "tensor.insert"(%12, %15, %0, %1) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    %17 = "tensor.insert"(%13, %16, %1, %0) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    %18 = "tensor.insert"(%14, %17, %1, %1) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    "func.return"(%18) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()