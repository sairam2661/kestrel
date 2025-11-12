"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "mixed_arithmetic_inserts"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = dense<[1, 2]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %1 = "arith.constant"() <{value = dense<[3, 4]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "tensor.insert"(%arg0, %0, %2) : (tensor<2xi32>, tensor<2xi32>, index) -> tensor<2xi32>
    %5 = "tensor.insert"(%arg1, %4, %3) : (tensor<2xi32>, tensor<2xi32>, index) -> tensor<2xi32>
    "func.return"(%5) : (tensor<2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> tensor<2xi32>, sym_name = "dynamic_tensor_inserts"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<[5, 6]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "tensor.insert"(%arg0, %0, %1) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    "func.return"(%2) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()