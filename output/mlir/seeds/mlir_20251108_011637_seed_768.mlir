"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x3xi32>, tensor<4x3xi32>) -> tensor<4x3xi32>, sym_name = "tensor_elementwise_add"}> ({
  ^bb0(%arg0: tensor<4x3xi32>, %arg1: tensor<4x3xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4x3xi32>, tensor<4x3xi32>) -> tensor<4x3xi32>
    %1 = "tosa.clamp"(%0) <{max_val = 32767 : i32, min_val = -32768 : i32, nan_mode = "PROPAGATE"}> : (tensor<4x3xi32>) -> tensor<4x3xi32>
    "func.return"(%1) : (tensor<4x3xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4x3xi32>) -> (), sym_name = "print_tensor"}> ({
  ^bb0(%arg0: tensor<4x3xi32>):
    "test.print"(%arg0) : (tensor<4x3xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = dense<[[[0, 1, 2], [3, 4, 5], [6, 7, 8], [9, 10, 11]]] > : tensor<4x3xi32>}>: tensor<4x3xi32>
    %1 = "arith.constant"() <{value = dense<[[[11, 10, 9], [8, 7, 6], [5, 4, 3], [2, 1, 0]]] > : tensor<4x3xi32>}>: tensor<4x3xi32>
    %2 = "func.call"(%0, %1) <{callee = @tensor_elementwise_add}> : (tensor<4x3xi32>, tensor<4x3xi32>) -> tensor<4x3xi32>
    "func.call"(%2) <{callee = @print_tensor}> : (tensor<4x3xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()