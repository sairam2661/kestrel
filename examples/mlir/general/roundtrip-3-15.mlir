"builtin.module"() ({
  "func.func"() <{function_type = (tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) -> tensor<64xf32>, sym_name = "map_binary"}> ({
  ^bb0(%arg0: tensor<64xf32>, %arg1: tensor<64xf32>, %arg2: tensor<64xf32>):
    %0 = "linalg.map"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: f32, %arg4: f32):
      %1 = "arith.addf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%1) : (f32) -> ()
    }) : (tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) -> tensor<64xf32>
    "func.return"(%0) : (tensor<64xf32>) -> ()
  }) : () -> ()
}) : () -> ()

