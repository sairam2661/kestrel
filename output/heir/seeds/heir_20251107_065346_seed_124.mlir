"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_mixed_arithmetic"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %3 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, index) -> i32
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.constant"() <{value = 3 : index}> : () -> index
    %6 = "tensor.extract"(%arg0, %5) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg1, %5) : (tensor<4xi32>, index) -> i32
    %8 = "arith.muli"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "arith.constant"() <{value = 0 : index}> : () -> index
    %10 = "tensor.extract"(%arg0, %9) : (tensor<4xi32>, index) -> i32
    %11 = "tensor.extract"(%arg1, %9) : (tensor<4xi32>, index) -> i32
    %12 = "arith.subi"(%10, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %13 = "tensor.insert"(%4, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %14 = "tensor.insert"(%8, %arg1, %5) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %15 = "tensor.insert"(%12, %13, %9) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%15) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()