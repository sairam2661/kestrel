"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_mix"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %2 = "tensor.extract"(%arg0, %0) : (tensor<16xi32>, i32) -> i32
    %3 = "tensor.extract"(%arg1, %1) : (tensor<16xi32>, i32) -> i32
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, %0) : (i32, tensor<16xi32>, i32) -> tensor<16xi32>
    %6 = "tensor.insert"(%4, %5, %1) : (i32, tensor<16xi32>, i32) -> tensor<16xi32>
    "func.return"(%6) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()