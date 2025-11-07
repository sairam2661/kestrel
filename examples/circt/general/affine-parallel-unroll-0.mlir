#map = affine_map<() -> (0, 0)>
#map1 = affine_map<() -> (2, 2)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x2xf32>, memref<2x2xf32>) -> (), sym_name = "main"}> ({
  ^bb0(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2x2xf32>
    "affine.parallel"() <{lowerBoundsGroups = dense<1> : tensor<2xi32>, lowerBoundsMap = #map, reductions = [], steps = [1, 1], upperBoundsGroups = dense<1> : tensor<2xi32>, upperBoundsMap = #map1}> ({
    ^bb0(%arg2: index, %arg3: index):
      %1 = "memref.load"(%arg0, %arg2, %arg3) : (memref<2x2xf32>, index, index) -> f32
      %2 = "memref.load"(%0, %arg2, %arg3) : (memref<2x2xf32>, index, index) -> f32
      %3 = "arith.addf"(%1, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "memref.store"(%3, %arg1, %arg2, %arg3) : (f32, memref<2x2xf32>, index, index) -> ()
      "affine.yield"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

