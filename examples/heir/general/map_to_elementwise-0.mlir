"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x512xf32>) -> tensor<1x512xf32>, sym_name = "mulf"}> ({
  ^bb0(%arg0: tensor<1x512xf32>):
    %0 = "arith.constant"() <{value = dense<2.000000e+00> : tensor<1x512xf32>}> : () -> tensor<1x512xf32>
    %1 = "tensor.empty"() : () -> tensor<1x512xf32>
    %2 = "linalg.map"(%0, %arg0, %1) ({
    ^bb0(%arg1: f32, %arg2: f32):
      %3 = "arith.mulf"(%arg1, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%3) : (f32) -> ()
    }) : (tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512xf32>) -> tensor<1x512xf32>
    "func.return"(%2) : (tensor<1x512xf32>) -> ()
  }) : () -> ()
}) : () -> ()

