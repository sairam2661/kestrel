"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_xor_and_add"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %2 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, index) -> i32
    %3 = "arith.xori"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%3, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %6 = "tensor.insert"(%4, %5, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%6) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()