#map = affine_map<(d0, d1) -> (0, d1 floordiv 64, 0, d0 floordiv 32, d0 mod 32, d1 mod 64)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map2 = affine_map<() -> (0)>
#map3 = affine_map<() -> (10)>
#map4 = affine_map<() -> (5)>
#map5 = affine_map<(d0, d1) -> (d0 + 5, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<5x10xf16, #map>, memref<5x10xf16, #map>) -> memref<10x10xf16, #map>, sym_name = "unstick_concat_stick"}> ({
  ^bb0(%arg0: memref<5x10xf16, #map>, %arg1: memref<5x10xf16, #map>):
    %0 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<5x10xf32>
    "zlow.unstick"(%arg0, %0) {layout = "2D"} : (memref<5x10xf16, #map>, memref<5x10xf32>) -> ()
    %1 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<5x10xf32>
    "zlow.unstick"(%arg1, %1) {layout = "2D"} : (memref<5x10xf16, #map>, memref<5x10xf32>) -> ()
    %2 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10x10xf32>
    "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map4}> ({
    ^bb0(%arg2: index):
      "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map3}> ({
      ^bb0(%arg3: index):
        %4 = "affine.load"(%0, %arg2, %arg3) <{map = #map1}> : (memref<5x10xf32>, index, index) -> f32
        "affine.store"(%4, %2, %arg2, %arg3) <{map = #map1}> : (f32, memref<10x10xf32>, index, index) -> ()
        "affine.yield"() : () -> ()
      }) : () -> ()
      "affine.yield"() : () -> ()
    }) : () -> ()
    "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map4}> ({
    ^bb0(%arg2: index):
      "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map3}> ({
      ^bb0(%arg3: index):
        %4 = "affine.load"(%1, %arg2, %arg3) <{map = #map1}> : (memref<5x10xf32>, index, index) -> f32
        "affine.store"(%4, %2, %arg2, %arg3) <{map = #map5}> : (f32, memref<10x10xf32>, index, index) -> ()
        "affine.yield"() : () -> ()
      }) : () -> ()
      "affine.yield"() : () -> ()
    }) : () -> ()
    %3 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10x10xf16, #map>
    "zlow.stick"(%2, %3) {layout = "2D"} : (memref<10x10xf32>, memref<10x10xf16, #map>) -> ()
    "func.return"(%3) : (memref<10x10xf16, #map>) -> ()
  }) {llvm.emit_c_interface} : () -> ()
}) : () -> ()

