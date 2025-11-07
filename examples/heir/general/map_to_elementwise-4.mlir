"builtin.module"() ({
  "func.func"() <{function_type = (tensor<512xf32>, tensor<512xf32>) -> tensor<512xf32>, sym_name = "multiple_dest"}> ({
  ^bb0(%arg0: tensor<512xf32>, %arg1: tensor<512xf32>):
    %0 = "arith.constant"() <{value = dense<2.000000e+00> : tensor<512xf32>}> : () -> tensor<512xf32>
    %1 = "tensor.empty"() : () -> tensor<512xf32>
    %2 = "linalg.map"(%0, %arg0, %1) ({
    ^bb0(%arg4: f32, %arg5: f32):
      %5 = "arith.mulf"(%arg4, %arg5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%5) : (f32) -> ()
    }) : (tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) -> tensor<512xf32>
    %3 = "linalg.map"(%arg1, %2, %1) ({
    ^bb0(%arg2: f32, %arg3: f32):
      %4 = "arith.addf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%4) : (f32) -> ()
    }) : (tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) -> tensor<512xf32>
    "func.return"(%3) : (tensor<512xf32>) -> ()
  }) : () -> ()
}) : () -> ()

