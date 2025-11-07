#map = affine_map<() -> (0, 0)>
#map1 = affine_map<() -> (2, 3)>
"builtin.module"() ({
  "func.func"() <{function_type = (f32, memref<4x6xf32>, memref<4x6xf32>) -> (), sym_name = "main"}> ({
  ^bb0(%arg0: f32, %arg1: memref<4x6xf32>, %arg2: memref<4x6xf32>):
    "affine.parallel"() <{lowerBoundsGroups = dense<1> : tensor<2xi32>, lowerBoundsMap = #map, reductions = [], steps = [1, 1], upperBoundsGroups = dense<1> : tensor<2xi32>, upperBoundsMap = #map1}> ({
    ^bb0(%arg3: index, %arg4: index):
      "scf.execute_region"() ({
        "memref.store"(%arg0, %arg1, %arg3, %arg4) : (f32, memref<4x6xf32>, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.execute_region"() ({
        "memref.store"(%arg0, %arg2, %arg4, %arg3) : (f32, memref<4x6xf32>, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : () -> ()
      "affine.yield"() : () -> ()
    }) {calyx.unroll = true} : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

