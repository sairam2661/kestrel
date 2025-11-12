"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "tensor.insert"(%3, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %5 = "arith.constant"() <{value = 0 : index}> : () -> index
    %6 = "tensor.extract"(%arg1, %5) : (tensor<4xi32>, index) -> i32
    %7 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %8 = "arith.muli"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %arg1, %5) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %10 = "arith.addi"(%4, %9) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%10) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()