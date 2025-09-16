"builtin.module"() ({
  "func.func"() <{function_type = (tensor<64xf32>, tensor<64xf32>) -> tensor<64xf32>, sym_name = "map_unary"}> ({
  ^bb0(%arg0: tensor<64xf32>, %arg1: tensor<64xf32>):
    %0 = "linalg.map"(%arg0, %arg1) ({
    ^bb0(%arg2: f32):
      %1 = "math.absf"(%arg2) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      "linalg.yield"(%1) : (f32) -> ()
    }) : (tensor<64xf32>, tensor<64xf32>) -> tensor<64xf32>
    "func.return"(%0) : (tensor<64xf32>) -> ()
  }) : () -> ()
}) : () -> ()

