"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "mixed_arith_and_tensor"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "tensor.insert"(%0, %arg0, %0) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %2 = "arith.constant"() <{value = 24 : index}> : () -> index
    %3 = "tensor.extract"(%1, %2) : (tensor<8xi32>, index) -> i32
    %4 = "arith.addi"(%3, %3) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg1, %2) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%5) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()