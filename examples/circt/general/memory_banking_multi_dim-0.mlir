#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<() -> (0)>
#map2 = affine_map<() -> (6)>
#map3 = affine_map<() -> (8)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<8x6xf32>, memref<8x6xf32>) -> memref<8x6xf32>, sym_name = "rank_two_bank_dim1"}> ({
  ^bb0(%arg0: memref<8x6xf32>, %arg1: memref<8x6xf32>):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<8x6xf32>
    "affine.parallel"() <{lowerBoundsGroups = dense<1> : tensor<1xi32>, lowerBoundsMap = #map1, reductions = [], steps = [1], upperBoundsGroups = dense<1> : tensor<1xi32>, upperBoundsMap = #map3}> ({
    ^bb0(%arg2: index):
      "affine.parallel"() <{lowerBoundsGroups = dense<1> : tensor<1xi32>, lowerBoundsMap = #map1, reductions = [], steps = [1], upperBoundsGroups = dense<1> : tensor<1xi32>, upperBoundsMap = #map2}> ({
      ^bb0(%arg3: index):
        %1 = "affine.load"(%arg0, %arg2, %arg3) <{map = #map}> : (memref<8x6xf32>, index, index) -> f32
        %2 = "affine.load"(%arg1, %arg2, %arg3) <{map = #map}> : (memref<8x6xf32>, index, index) -> f32
        %3 = "arith.mulf"(%1, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
        "affine.store"(%3, %0, %arg2, %arg3) <{map = #map}> : (f32, memref<8x6xf32>, index, index) -> ()
        "affine.yield"() : () -> ()
      }) : () -> ()
      "affine.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%0) : (memref<8x6xf32>) -> ()
  }) : () -> ()
}) : () -> ()

