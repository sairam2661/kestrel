"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "tensor.extract"(%arg0) <{index = [0]}> : (tensor<4xi32>) -> i32
    %1 = "tensor.extract"(%arg1) <{index = [0]}> : (tensor<4xi32>) -> i32
    %2 = "arith.muli"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "arith.muli"(%2, %3) : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0) <{index = [0]}> : (i32, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()