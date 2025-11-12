"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "mixed_tensor_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %3 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, index) -> i32
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.subi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "tensor.insert"(%4, %arg0, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %8 = "tensor.insert"(%5, %arg0, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %9 = "tensor.insert"(%6, %arg0, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%9) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()