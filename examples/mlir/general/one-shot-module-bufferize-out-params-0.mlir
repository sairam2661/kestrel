"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xf32>) -> (tensor<5xf32>, tensor<5xf32>), sym_name = "callee"}> ({
  ^bb0(%arg1: tensor<5xf32>):
    %4 = "arith.constant"() <{value = 0 : index}> : () -> index
    %5 = "arith.constant"() <{value = 8.000000e+00 : f32}> : () -> f32
    %6 = "tensor.insert"(%5, %arg1, %4) : (f32, tensor<5xf32>, index) -> tensor<5xf32>
    "func.return"(%arg1, %6) : (tensor<5xf32>, tensor<5xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<5xf32>) -> (f32, f32), sym_name = "main"}> ({
  ^bb0(%arg0: tensor<5xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1:2 = "func.call"(%arg0) <{callee = @callee}> : (tensor<5xf32>) -> (tensor<5xf32>, tensor<5xf32>)
    %2 = "tensor.extract"(%1#0, %0) : (tensor<5xf32>, index) -> f32
    %3 = "tensor.extract"(%1#1, %0) : (tensor<5xf32>, index) -> f32
    "func.return"(%2, %3) : (f32, f32) -> ()
  }) : () -> ()
}) : () -> ()

