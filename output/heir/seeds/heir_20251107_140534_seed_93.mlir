"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "tensor.insert"(%1, %arg1) <{index = [0]}> : (i32, tensor<4xi32>) -> tensor<4xi32>
    %3 = "tensor.extract"(%2, %0) <{index = [2]}> : (tensor<4xi32>, i32) -> i32
    %4 = "arith.addi"(%3, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %2) <{index = [1]}> : (i32, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()