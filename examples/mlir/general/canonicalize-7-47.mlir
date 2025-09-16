"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x64x256xf32>) -> tensor<16x64x256xf32>, sym_name = "dead_softmax"}> ({
  ^bb0(%arg0: tensor<16x64x256xf32>):
    %0 = "tensor.empty"() : () -> tensor<16x64x256xf32>
    %1 = "linalg.softmax"(%arg0, %0) <{dimension = 1 : i64}> : (tensor<16x64x256xf32>, tensor<16x64x256xf32>) -> tensor<16x64x256xf32>
    "func.return"(%arg0) : (tensor<16x64x256xf32>) -> ()
  }) : () -> ()
}) : () -> ()

