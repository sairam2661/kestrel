"builtin.module"() ({
  "func.func"() <{function_type = (memref<1x8x8x8xf32>) -> (), sym_name = "generalize_linalg_map"}> ({
  ^bb0(%arg0: memref<1x8x8x8xf32>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    "linalg.map"(%arg0) ({
      "linalg.yield"(%0) : (f32) -> ()
    }) : (memref<1x8x8x8xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

