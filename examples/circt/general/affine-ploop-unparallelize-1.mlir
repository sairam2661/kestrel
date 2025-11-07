#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<() -> (0)>
#map2 = affine_map<() -> (16)>
#map3 = affine_map<() -> (4)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<16x4xf32>) -> (), sym_name = "main"}> ({
  ^bb0(%arg0: memref<16x4xf32>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    "affine.parallel"() <{lowerBoundsGroups = dense<1> : tensor<1xi32>, lowerBoundsMap = #map1, reductions = [], steps = [1], upperBoundsGroups = dense<1> : tensor<1xi32>, upperBoundsMap = #map3}> ({
    ^bb0(%arg1: index):
      "affine.parallel"() <{lowerBoundsGroups = dense<1> : tensor<1xi32>, lowerBoundsMap = #map1, reductions = [], steps = [1], upperBoundsGroups = dense<1> : tensor<1xi32>, upperBoundsMap = #map2}> ({
      ^bb0(%arg2: index):
        "affine.store"(%0, %arg0, %arg1, %arg2) <{map = #map}> : (f32, memref<16x4xf32>, index, index) -> ()
        "affine.yield"() : () -> ()
      }) {unparallelize.factor = 1 : i64} : () -> ()
      "affine.yield"() : () -> ()
    }) {unparallelize.factor = 2 : i64} : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

