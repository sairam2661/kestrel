#map = affine_map<(d0, d1) -> (0, d1 floordiv 64, 0, d0 floordiv 32, d0 mod 32, d1 mod 64)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map2 = affine_map<() -> (0)>
#map3 = affine_map<() -> (10)>
#map4 = affine_map<() -> (5)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?xf16, #map>) -> memref<?x?xf16, #map>, sym_name = "unstick_transpose_stick_unknown"}> ({
  ^bb0(%arg0: memref<?x?xf16, #map>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "memref.dim"(%arg0, %0) : (memref<?x?xf16, #map>, index) -> index
    %3 = "memref.dim"(%arg0, %1) : (memref<?x?xf16, #map>, index) -> index
    %4 = "memref.alloc"(%2, %3) <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 2, 0>}> : (index, index) -> memref<?x?xf32>
    "zlow.unstick"(%arg0, %4) {layout = "2D"} : (memref<?x?xf16, #map>, memref<?x?xf32>) -> ()
    %5 = "memref.alloc"(%3, %2) <{alignment = 16 : i64, operandSegmentSizes = array<i32: 2, 0>}> : (index, index) -> memref<?x?xf32>
    "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map4}> ({
    ^bb0(%arg1: index):
      "affine.for"() <{lowerBoundMap = #map2, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map3}> ({
      ^bb0(%arg2: index):
        %9 = "affine.load"(%4, %arg1, %arg2) <{map = #map1}> : (memref<?x?xf32>, index, index) -> f32
        "affine.store"(%9, %5, %arg2, %arg1) <{map = #map1}> : (f32, memref<?x?xf32>, index, index) -> ()
        "affine.yield"() : () -> ()
      }) : () -> ()
      "affine.yield"() : () -> ()
    }) : () -> ()
    %6 = "memref.dim"(%5, %0) : (memref<?x?xf32>, index) -> index
    %7 = "memref.dim"(%5, %1) : (memref<?x?xf32>, index) -> index
    %8 = "memref.alloc"(%7, %6) <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 2, 0>}> : (index, index) -> memref<?x?xf16, #map>
    "zlow.stick"(%5, %8) {layout = "2D"} : (memref<?x?xf32>, memref<?x?xf16, #map>) -> ()
    "func.return"(%8) : (memref<?x?xf16, #map>) -> ()
  }) : () -> ()
}) : () -> ()

