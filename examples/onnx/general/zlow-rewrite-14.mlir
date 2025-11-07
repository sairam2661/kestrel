#map = affine_map<(d0, d1, d2, d3) -> (d0, d3 floordiv 64, d1, d2 floordiv 32, d2 mod 32, d3 mod 64)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<() -> (0)>
#map3 = affine_map<() -> (7)>
#map4 = affine_map<() -> (5)>
#map5 = affine_map<() -> (3)>
#map6 = affine_map<() -> (1)>
#map7 = affine_map<(d0, d1, d2, d3) -> (d0 + 1, d1, d2, d3)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<1x5x7x3xf16, #map>, memref<1x5x7x3xf16, #map>) -> memref<2x5x7x3xf16, #map>, sym_name = "unstick_concat_stick_nchw"}> ({
  ^bb0(%arg0: memref<1x5x7x3xf16, #map>, %arg1: memref<1x5x7x3xf16, #map>):
    %0 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x3x5x7xf32>
    "zlow.unstick"(%arg0, %0) {layout = "NCHW"} : (memref<1x5x7x3xf16, #map>, memref<1x3x5x7xf32>) -> ()
    %1 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x3x5x7xf32>
    "zlow.unstick"(%arg1, %1) {layout = "NCHW"} : (memref<1x5x7x3xf16, #map>, memref<1x3x5x7xf32>) -> ()
    %2 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2x3x5x7xf32>
    "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map6}> ({
    ^bb0(%arg2: index):
      "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map5}> ({
      ^bb0(%arg3: index):
        "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map4}> ({
        ^bb0(%arg4: index):
          "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map3}> ({
          ^bb0(%arg5: index):
            %4 = "affine.load"(%0, %arg2, %arg3, %arg4, %arg5) <{map = #map1}> : (memref<1x3x5x7xf32>, index, index, index, index) -> f32
            "affine.store"(%4, %2, %arg2, %arg3, %arg4, %arg5) <{map = #map1}> : (f32, memref<2x3x5x7xf32>, index, index, index, index) -> ()
            "affine.yield"() : () -> ()
          }) : () -> ()
          "affine.yield"() : () -> ()
        }) : () -> ()
        "affine.yield"() : () -> ()
      }) : () -> ()
      "affine.yield"() : () -> ()
    }) : () -> ()
    "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map6}> ({
    ^bb0(%arg2: index):
      "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map5}> ({
      ^bb0(%arg3: index):
        "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map4}> ({
        ^bb0(%arg4: index):
          "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map3}> ({
          ^bb0(%arg5: index):
            %4 = "affine.load"(%1, %arg2, %arg3, %arg4, %arg5) <{map = #map1}> : (memref<1x3x5x7xf32>, index, index, index, index) -> f32
            "affine.store"(%4, %2, %arg2, %arg3, %arg4, %arg5) <{map = #map7}> : (f32, memref<2x3x5x7xf32>, index, index, index, index) -> ()
            "affine.yield"() : () -> ()
          }) : () -> ()
          "affine.yield"() : () -> ()
        }) : () -> ()
        "affine.yield"() : () -> ()
      }) : () -> ()
      "affine.yield"() : () -> ()
    }) : () -> ()
    %3 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2x5x7x3xf16, #map>
    "zlow.stick"(%2, %3) {layout = "NCHW"} : (memref<2x3x5x7xf32>, memref<2x5x7x3xf16, #map>) -> ()
    "func.return"(%3) : (memref<2x5x7x3xf16, #map>) -> ()
  }) : () -> ()
}) : () -> ()

