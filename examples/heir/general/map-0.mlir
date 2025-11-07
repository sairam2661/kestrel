"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x512xf32>, tensor<1x512xf32>) -> tensor<1x512xf32>, sym_name = "mulf"}> ({
  ^bb0(%arg0: tensor<1x512xf32>, %arg1: tensor<1x512xf32>):
    %0 = "tensor.empty"() : () -> tensor<1x512xf32>
    %1 = "linalg.map"(%arg0, %arg1, %0) ({
    ^bb0(%arg2: f32, %arg3: f32):
      %2 = "arith.mulf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%2) : (f32) -> ()
    }) : (tensor<1x512xf32>, tensor<1x512xf32>, tensor<1x512xf32>) -> tensor<1x512xf32>
    "func.return"(%1) : (tensor<1x512xf32>) -> ()
  }) : () -> ()
}) : () -> ()

