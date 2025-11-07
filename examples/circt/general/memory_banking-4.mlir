#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<() -> (0)>
#map2 = affine_map<() -> (8)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> memref<8xf32>, sym_name = "alloc_unroll2"}> ({
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<8xf32>
    %1 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<8xf32>
    %2 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<8xf32>
    "affine.parallel"() <{lowerBoundsGroups = dense<1> : tensor<1xi32>, lowerBoundsMap = #map1, reductions = [], steps = [1], upperBoundsGroups = dense<1> : tensor<1xi32>, upperBoundsMap = #map2}> ({
    ^bb0(%arg0: index):
      %3 = "affine.load"(%0, %arg0) <{map = #map}> : (memref<8xf32>, index) -> f32
      %4 = "affine.load"(%1, %arg0) <{map = #map}> : (memref<8xf32>, index) -> f32
      %5 = "arith.mulf"(%3, %4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "affine.store"(%5, %2, %arg0) <{map = #map}> : (f32, memref<8xf32>, index) -> ()
      "affine.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%2) : (memref<8xf32>) -> ()
  }) : () -> ()
}) : () -> ()

