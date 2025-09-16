"builtin.module"() ({
  "func.func"() <{function_type = (tensor<64xf32>) -> tensor<64xf32>, sym_name = "map_no_inputs"}> ({
  ^bb0(%arg0: tensor<64xf32>):
    %0 = "linalg.map"(%arg0) ({
      %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
      "linalg.yield"(%1) : (f32) -> ()
    }) : (tensor<64xf32>) -> tensor<64xf32>
    "func.return"(%0) : (tensor<64xf32>) -> ()
  }) : () -> ()
}) : () -> ()

