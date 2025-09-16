"builtin.module"() ({
  "func.func"() <{function_type = (index, i32) -> tensor<3xi32>, sym_name = "unknown_memory_space"}> ({
  ^bb0(%arg0: index, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<[5, 1000, 20]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %1 = "tensor.insert"(%arg1, %0, %arg0) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    "func.return"(%1) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

