"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> tensor<3xi32>, sym_name = "double_insert"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = dense<[1, 2, 3]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "tensor.insert"(%arg0, %0, %1) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    %5 = "tensor.insert"(%arg1, %4, %2) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    %6 = "tensor.insert"(%arg2, %5, %2) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    "func.return"(%6) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

