"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_mix_and_add"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %c4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %c5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %c6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %c7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %0 = "tensor.extract"(%arg0, %c0) : (tensor<4xi32>, index) -> i32
    %1 = "tensor.extract"(%arg0, %c1) : (tensor<4xi32>, index) -> i32
    %2 = "tensor.extract"(%arg0, %c2) : (tensor<4xi32>, index) -> i32
    %3 = "tensor.extract"(%arg0, %c3) : (tensor<4xi32>, index) -> i32
    %4 = "tensor.extract"(%arg1, %c4) : (tensor<4xi32>, index) -> i32
    %5 = "tensor.extract"(%arg1, %c5) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg1, %c6) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg1, %c7) : (tensor<4xi32>, index) -> i32
    %8 = "arith.addi"(%0, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "arith.addi"(%1, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "arith.addi"(%2, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "arith.addi"(%3, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %12 = "tensor.insert"(%8, %arg0, %c0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %13 = "tensor.insert"(%9, %12, %c1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %14 = "tensor.insert"(%10, %13, %c2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %15 = "tensor.insert"(%11, %14, %c3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%15) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()