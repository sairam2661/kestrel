"builtin.module"() ({
  "func.func"() <{function_type = (memref<64xf32>, memref<64xf32>) -> (), sym_name = "map_unary_memref"}> ({
  ^bb0(%arg0: memref<64xf32>, %arg1: memref<64xf32>):
    "linalg.map"(%arg0, %arg1) ({
    ^bb0(%arg2: f32):
      %0 = "math.absf"(%arg2) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      "linalg.yield"(%0) : (f32) -> ()
    }) : (memref<64xf32>, memref<64xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

