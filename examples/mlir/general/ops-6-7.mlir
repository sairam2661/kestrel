#map = affine_map<(d0, d1, d2) -> (d0 * 2, d1 + d2)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map2 = affine_map<(d0, d1) -> (d0 + 10, d1 + 10)>
#map3 = affine_map<() -> (0, 0)>
#map4 = affine_map<()[s0] -> (s0, 100)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<100x100xf32>, index) -> (), sym_name = "parallel"}> ({
  ^bb0(%arg0: memref<100x100xf32>, %arg1: index):
    "affine.parallel"(%arg1) <{lowerBoundsGroups = dense<1> : tensor<2xi32>, lowerBoundsMap = #map3, reductions = [], steps = [10, 10], upperBoundsGroups = dense<1> : tensor<2xi32>, upperBoundsMap = #map4}> ({
    ^bb0(%arg2: index, %arg3: index):
      %0:2 = "affine.parallel"(%arg2, %arg3, %arg2, %arg3) <{lowerBoundsGroups = dense<1> : tensor<2xi32>, lowerBoundsMap = #map1, reductions = [6, 3], steps = [1, 1], upperBoundsGroups = dense<1> : tensor<2xi32>, upperBoundsMap = #map2}> ({
      ^bb0(%arg4: index, %arg5: index):
        %1 = "affine.load"(%arg0, %arg2, %arg3, %arg5) <{map = #map}> : (memref<100x100xf32>, index, index, index) -> f32
        "affine.yield"(%1, %1) : (f32, f32) -> ()
      }) : (index, index, index, index) -> (f32, f32)
      "affine.yield"() : () -> ()
    }) : (index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

