"builtin.module"() ({
  "func.func"() <{function_type = (memref<64xf32>, memref<64xf32>, memref<64xf32>) -> (), sym_name = "map_binary_memref"}> ({
  ^bb0(%arg0: memref<64xf32>, %arg1: memref<64xf32>, %arg2: memref<64xf32>):
    "linalg.map"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: f32, %arg4: f32):
      %0 = "arith.addf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%0) : (f32) -> ()
    }) : (memref<64xf32>, memref<64xf32>, memref<64xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

