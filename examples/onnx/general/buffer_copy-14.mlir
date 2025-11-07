#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (40)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "copy_to_nested"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<40x60xf32>
    %1 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10x60xf32>
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 0 : index}> : () -> index
    "affine.for"() <{lowerBoundMap = #map, operandSegmentSizes = array<i32: 0, 0, 0>, step = 10 : index, upperBoundMap = #map1}> ({
    ^bb0(%arg2: index):
      "krnl.copy_to_tile_buffer"(%1, %0, %arg2, %3, %2) {transpose = false} : (memref<10x60xf32>, memref<40x60xf32>, index, index, f32) -> ()
      "affine.yield"() : () -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

