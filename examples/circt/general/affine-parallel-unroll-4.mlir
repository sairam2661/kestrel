#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<() -> (0)>
#map2 = affine_map<() -> (2)>
#map3 = affine_map<() -> (1)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<2xf32>, memref<2xf32>, memref<2xf32>, memref<2xf32>) -> (), sym_name = "war"}> ({
  ^bb0(%arg0: memref<2xf32>, %arg1: memref<2xf32>, %arg2: memref<2xf32>, %arg3: memref<2xf32>):
    %0 = "arith.constant"() <{value = 4.200000e+01 : f32}> : () -> f32
    "affine.parallel"() <{lowerBoundsGroups = dense<1> : tensor<1xi32>, lowerBoundsMap = #map1, reductions = [], steps = [1], upperBoundsGroups = dense<1> : tensor<1xi32>, upperBoundsMap = #map3}> ({
    ^bb0(%arg4: index):
      "scf.execute_region"() ({
        "affine.for"() <{lowerBoundMap = #map1, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map2}> ({
        ^bb0(%arg6: index):
          "affine.store"(%0, %arg1, %arg6) <{map = #map}> : (f32, memref<2xf32>, index) -> ()
          %2 = "affine.load"(%arg0) <{map = #map1}> : (memref<2xf32>) -> f32
          "affine.store"(%2, %arg3, %arg6) <{map = #map}> : (f32, memref<2xf32>, index) -> ()
          "affine.yield"() : () -> ()
        }) : () -> ()
        "scf.yield"() : () -> ()
      }) : () -> ()
      "scf.execute_region"() ({
        "affine.for"() <{lowerBoundMap = #map1, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map2}> ({
        ^bb0(%arg5: index):
          "affine.store"(%0, %arg0, %arg5) <{map = #map}> : (f32, memref<2xf32>, index) -> ()
          %1 = "affine.load"(%arg0) <{map = #map1}> : (memref<2xf32>) -> f32
          "affine.store"(%1, %arg2, %arg5) <{map = #map}> : (f32, memref<2xf32>, index) -> ()
          "affine.yield"() : () -> ()
        }) : () -> ()
        "scf.yield"() : () -> ()
      }) : () -> ()
      "affine.yield"() : () -> ()
    }) {calyx.unroll = true} : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

