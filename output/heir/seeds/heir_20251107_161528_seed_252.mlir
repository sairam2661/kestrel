"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4xi32>) -> (i32, tensor<4xi32>), sym_name = "complex_mixed"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "tensor.extract"(%arg1, %1) : (tensor<4xi32>, i32) -> i32
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %6 = "tensor.insert"(%4, %arg1, %5) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%2, %6) : (i32, tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()