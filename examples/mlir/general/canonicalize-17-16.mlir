"builtin.module"() ({
  "func.func"() <{function_type = (index) -> tensor<4xf32>, sym_name = "fold_insert"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = dense<4.000000e+00> : tensor<4xf32>}> : () -> tensor<4xf32>
    %1 = "arith.constant"() <{value = 4.000000e+00 : f32}> : () -> f32
    %2 = "tensor.insert"(%1, %0, %arg0) : (f32, tensor<4xf32>, index) -> tensor<4xf32>
    "func.return"(%2) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

