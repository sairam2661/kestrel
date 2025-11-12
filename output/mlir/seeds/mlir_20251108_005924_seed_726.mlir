"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>, tensor<i64>) -> (tensor<i32>, tensor<i64>), sym_name = "tensor_transforms"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i64>):
    %0 = "arith.addi"(%arg0, %arg0) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %1 = "arith.muli"(%arg1, %arg1) : (tensor<i64>, tensor<i64>) -> tensor<i64>
    %2:2 = "func.call"(%0, %1) <{callee = @tensor_swap}> : (tensor<i32>, tensor<i64>) -> (tensor<i32>, tensor<i64>)
    "func.return"(%2#0, %2#1) : (tensor<i32>, tensor<i64>) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (tensor<i32>, tensor<i64>) -> (tensor<i32>, tensor<i64>), sym_name = "tensor_swap"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i64>):
    "func.return"(%arg1, %arg0) : (tensor<i64>, tensor<i32>) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = () -> tensor<i32>, sym_name = "create_tensor_i32"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = dense<42> : tensor<i32>}> : () -> tensor<i32>
    "func.return"(%0) : (tensor<i32>) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = () -> tensor<i64>, sym_name = "create_tensor_i64"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = dense<100> : tensor<i64>}> : () -> tensor<i64>
    "func.return"(%0) : (tensor<i64>) -> ()
  }) : () -> ()
}) : () -> ()