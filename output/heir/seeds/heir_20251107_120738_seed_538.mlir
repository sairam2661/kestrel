"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "tensor_rot_and_insert"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "tensor_ext.rotate"(%arg0, %arg1)  <{axis = 0}> : (tensor<4xi32>, i32) -> tensor<4xi32>
    %1 = "arith.constant"() <{value = 15 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "tensor.insert"(%1, %0, %2) <{indices = dense<[0]> : tensor<1xui64>}> : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%3) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()