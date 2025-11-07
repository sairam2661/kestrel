#map = affine_map<(d0, d1) -> (0, d1 floordiv 64, 0, d0 floordiv 32, d0 mod 32, d1 mod 64)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map2 = affine_map<() -> (0)>
#map3 = affine_map<() -> (3)>
#map4 = affine_map<() -> (2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x6xf16, #map>) -> (memref<2x3xf16, #map>, memref<2x3xf16, #map>), sym_name = "unstick_split_stick"}> ({
  ^bb0(%arg0: memref<2x6xf16, #map>):
    %0 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2x6xf32>
    "zlow.unstick"(%arg0, %0) {layout = "2D"} : (memref<2x6xf16, #map>, memref<2x6xf32>) -> ()
    %1 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2x3xf32>
    %2 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2x3xf32>
    "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map4}> ({
    ^bb0(%arg1: index):
      "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map3}> ({
      ^bb0(%arg2: index):
        %5 = "affine.load"(%0, %arg1, %arg2) <{map = #map1}> : (memref<2x6xf32>, index, index) -> f32
        "affine.store"(%5, %1, %arg1, %arg2) <{map = #map1}> : (f32, memref<2x3xf32>, index, index) -> ()
        "affine.yield"() : () -> ()
      }) : () -> ()
      "affine.yield"() : () -> ()
    }) : () -> ()
    "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map4}> ({
    ^bb0(%arg1: index):
      "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map3}> ({
      ^bb0(%arg2: index):
        %5 = "affine.apply"(%arg2) <{map = #map5}> : (index) -> index
        %6 = "affine.load"(%0, %arg1, %5) <{map = #map1}> : (memref<2x6xf32>, index, index) -> f32
        "affine.store"(%6, %2, %arg1, %arg2) <{map = #map1}> : (f32, memref<2x3xf32>, index, index) -> ()
        "affine.yield"() : () -> ()
      }) : () -> ()
      "affine.yield"() : () -> ()
    }) : () -> ()
    %3 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2x3xf16, #map>
    "zlow.stick"(%1, %3) {layout = "2D"} : (memref<2x3xf32>, memref<2x3xf16, #map>) -> ()
    %4 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2x3xf16, #map>
    "zlow.stick"(%2, %4) {layout = "2D"} : (memref<2x3xf32>, memref<2x3xf16, #map>) -> ()
    "func.return"(%3, %4) : (memref<2x3xf16, #map>, memref<2x3xf16, #map>) -> ()
  }) : () -> ()
}) : () -> ()

