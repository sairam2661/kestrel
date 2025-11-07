#map = affine_map<(d0, d1, d2, d3) -> (d0, d3 floordiv 64, d1, d2 floordiv 32, d2 mod 32, d3 mod 64)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2) -> (d0 + d1 + d2)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<() -> (0)>
#map5 = affine_map<() -> (1)>
#map6 = affine_map<() -> (2048)>
#map7 = affine_map<(d0, d1) -> (0, d1 floordiv 64, 0, d0 floordiv 32, d0 mod 32, d1 mod 64)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<1x1x1x2048xf16, #map>) -> memref<1x2048xf16, #map7>, sym_name = "unstick_affinefor_stick_diff_layout"}> ({
  ^bb0(%arg0: memref<1x1x1x2048xf16, #map>):
    %0 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x2048x1x1xf32>
    "zlow.unstick"(%arg0, %0) {layout = "NCHW"} : (memref<1x1x1x2048xf16, #map>, memref<1x2048x1x1xf32>) -> ()
    %1 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x2048xf32>
    "affine.for"() <{lowerBoundMap = #map4, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map5}> ({
    ^bb0(%arg1: index):
      "affine.for"() <{lowerBoundMap = #map4, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map6}> ({
      ^bb0(%arg2: index):
        "affine.for"() <{lowerBoundMap = #map4, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map5}> ({
        ^bb0(%arg3: index):
          "affine.for"() <{lowerBoundMap = #map4, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map5}> ({
          ^bb0(%arg4: index):
            %3 = "affine.load"(%0, %arg1, %arg2, %arg3, %arg4) <{map = #map1}> : (memref<1x2048x1x1xf32>, index, index, index, index) -> f32
            %4 = "affine.apply"(%arg2, %arg3, %arg4) <{map = #map2}> : (index, index, index) -> index
            "affine.store"(%3, %1, %arg1, %4) <{map = #map3}> : (f32, memref<1x2048xf32>, index, index) -> ()
            "affine.yield"() : () -> ()
          }) : () -> ()
          "affine.yield"() : () -> ()
        }) : () -> ()
        "affine.yield"() : () -> ()
      }) : () -> ()
      "affine.yield"() : () -> ()
    }) : () -> ()
    %2 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x2048xf16, #map7>
    "zlow.stick"(%1, %2) {layout = "2D"} : (memref<1x2048xf32>, memref<1x2048xf16, #map7>) -> ()
    "func.return"(%2) : (memref<1x2048xf16, #map7>) -> ()
  }) : () -> ()
}) : () -> ()

