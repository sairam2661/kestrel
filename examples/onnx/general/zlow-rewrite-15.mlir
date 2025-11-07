#map = affine_map<(d0, d1, d2, d3) -> (d0, d3 floordiv 64, d1, d2 floordiv 32, d2 mod 32, d3 mod 64)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map3 = affine_map<() -> (0)>
#map4 = affine_map<()[s0] -> (s0)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?x?x?xf16, #map>, memref<?x?x?x?xf16, #map>) -> memref<?x?x?x?xf16, #map>, sym_name = "unstick_concat_stick_nchw_unknown_dims"}> ({
  ^bb0(%arg0: memref<?x?x?x?xf16, #map>, %arg1: memref<?x?x?x?xf16, #map>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "memref.dim"(%arg0, %0) : (memref<?x?x?x?xf16, #map>, index) -> index
    %5 = "memref.dim"(%arg0, %1) : (memref<?x?x?x?xf16, #map>, index) -> index
    %6 = "memref.dim"(%arg0, %2) : (memref<?x?x?x?xf16, #map>, index) -> index
    %7 = "memref.dim"(%arg0, %3) : (memref<?x?x?x?xf16, #map>, index) -> index
    %8 = "memref.dim"(%arg1, %0) : (memref<?x?x?x?xf16, #map>, index) -> index
    %9 = "memref.dim"(%arg1, %1) : (memref<?x?x?x?xf16, #map>, index) -> index
    %10 = "memref.dim"(%arg1, %2) : (memref<?x?x?x?xf16, #map>, index) -> index
    %11 = "memref.dim"(%arg1, %3) : (memref<?x?x?x?xf16, #map>, index) -> index
    %12 = "memref.alloc"(%4, %5, %6, %7) <{alignment = 16 : i64, operandSegmentSizes = array<i32: 4, 0>}> : (index, index, index, index) -> memref<?x?x?x?xf32>
    "zlow.unstick"(%arg0, %12) {layout = "NCHW"} : (memref<?x?x?x?xf16, #map>, memref<?x?x?x?xf32>) -> ()
    %13 = "memref.alloc"(%8, %9, %10, %11) <{alignment = 16 : i64, operandSegmentSizes = array<i32: 4, 0>}> : (index, index, index, index) -> memref<?x?x?x?xf32>
    "zlow.unstick"(%arg1, %13) {layout = "NCHW"} : (memref<?x?x?x?xf16, #map>, memref<?x?x?x?xf32>) -> ()
    %14 = "affine.apply"(%4, %8) <{map = #map1}> : (index, index) -> index
    %15 = "memref.alloc"(%14, %5, %6, %7) <{alignment = 16 : i64, operandSegmentSizes = array<i32: 4, 0>}> : (index, index, index, index) -> memref<?x?x?x?xf32>
    "affine.for"(%4) <{lowerBoundMap = #map3, operandSegmentSizes = array<i32: 0, 1, 0>, step = 1 : index, upperBoundMap = #map4}> ({
    ^bb0(%arg2: index):
      "affine.for"(%5) <{lowerBoundMap = #map3, operandSegmentSizes = array<i32: 0, 1, 0>, step = 1 : index, upperBoundMap = #map4}> ({
      ^bb0(%arg3: index):
        "affine.for"(%6) <{lowerBoundMap = #map3, operandSegmentSizes = array<i32: 0, 1, 0>, step = 1 : index, upperBoundMap = #map4}> ({
        ^bb0(%arg4: index):
          "affine.for"(%7) <{lowerBoundMap = #map3, operandSegmentSizes = array<i32: 0, 1, 0>, step = 1 : index, upperBoundMap = #map4}> ({
          ^bb0(%arg5: index):
            %21 = "affine.load"(%12, %arg2, %arg3, %arg4, %arg5) <{map = #map2}> : (memref<?x?x?x?xf32>, index, index, index, index) -> f32
            "affine.store"(%21, %15, %arg2, %arg3, %arg4, %arg5) <{map = #map2}> : (f32, memref<?x?x?x?xf32>, index, index, index, index) -> ()
            "affine.yield"() : () -> ()
          }) : (index) -> ()
          "affine.yield"() : () -> ()
        }) : (index) -> ()
        "affine.yield"() : () -> ()
      }) : (index) -> ()
      "affine.yield"() : () -> ()
    }) : (index) -> ()
    "affine.for"(%8) <{lowerBoundMap = #map3, operandSegmentSizes = array<i32: 0, 1, 0>, step = 1 : index, upperBoundMap = #map4}> ({
    ^bb0(%arg2: index):
      "affine.for"(%9) <{lowerBoundMap = #map3, operandSegmentSizes = array<i32: 0, 1, 0>, step = 1 : index, upperBoundMap = #map4}> ({
      ^bb0(%arg3: index):
        "affine.for"(%10) <{lowerBoundMap = #map3, operandSegmentSizes = array<i32: 0, 1, 0>, step = 1 : index, upperBoundMap = #map4}> ({
        ^bb0(%arg4: index):
          "affine.for"(%11) <{lowerBoundMap = #map3, operandSegmentSizes = array<i32: 0, 1, 0>, step = 1 : index, upperBoundMap = #map4}> ({
          ^bb0(%arg5: index):
            %21 = "affine.apply"(%arg2, %4) <{map = #map1}> : (index, index) -> index
            %22 = "affine.load"(%13, %arg2, %arg3, %arg4, %arg5) <{map = #map2}> : (memref<?x?x?x?xf32>, index, index, index, index) -> f32
            "affine.store"(%22, %15, %21, %arg3, %arg4, %arg5) <{map = #map2}> : (f32, memref<?x?x?x?xf32>, index, index, index, index) -> ()
            "affine.yield"() : () -> ()
          }) : (index) -> ()
          "affine.yield"() : () -> ()
        }) : (index) -> ()
        "affine.yield"() : () -> ()
      }) : (index) -> ()
      "affine.yield"() : () -> ()
    }) : (index) -> ()
    %16 = "memref.dim"(%15, %0) : (memref<?x?x?x?xf32>, index) -> index
    %17 = "memref.dim"(%15, %1) : (memref<?x?x?x?xf32>, index) -> index
    %18 = "memref.dim"(%15, %2) : (memref<?x?x?x?xf32>, index) -> index
    %19 = "memref.dim"(%15, %3) : (memref<?x?x?x?xf32>, index) -> index
    %20 = "memref.alloc"(%16, %17, %18, %19) <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 4, 0>}> : (index, index, index, index) -> memref<?x?x?x?xf16, #map>
    "zlow.stick"(%15, %20) {layout = "NCHW"} : (memref<?x?x?x?xf32>, memref<?x?x?x?xf16, #map>) -> ()
    "func.return"(%20) : (memref<?x?x?x?xf16, #map>) -> ()
  }) : () -> ()
}) : () -> ()

