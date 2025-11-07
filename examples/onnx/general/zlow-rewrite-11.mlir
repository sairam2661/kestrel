#map = affine_map<(d0, d1, d2, d3) -> (d0, d3 floordiv 64, d1, d2 floordiv 32, d2 mod 32, d3 mod 64)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 + 1, d3 + 1)>
#map3 = affine_map<() -> (0)>
#map4 = affine_map<() -> (56)>
#map5 = affine_map<() -> (128)>
#map6 = affine_map<()[s0] -> (s0)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x56x56x128xf16, #map>) -> memref<?x58x58x128xf16, #map>, sym_name = "unstick_affinefor_stick_nchw"}> ({
  ^bb0(%arg0: memref<?x56x56x128xf16, #map>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "memref.dim"(%arg0, %0) : (memref<?x56x56x128xf16, #map>, index) -> index
    %2 = "memref.alloc"(%1) <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?x128x56x56xf32>
    "zlow.unstick"(%arg0, %2) {layout = "NCHW"} : (memref<?x56x56x128xf16, #map>, memref<?x128x56x56xf32>) -> ()
    %3 = "memref.alloc"(%1) <{alignment = 16 : i64, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?x128x58x58xf32>
    "affine.for"(%1) <{lowerBoundMap = #map3, operandSegmentSizes = array<i32: 0, 1, 0>, step = 1 : index, upperBoundMap = #map6}> ({
    ^bb0(%arg1: index):
      "affine.for"() <{lowerBoundMap = #map3, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map5}> ({
      ^bb0(%arg2: index):
        "affine.for"() <{lowerBoundMap = #map3, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map4}> ({
        ^bb0(%arg3: index):
          "affine.for"() <{lowerBoundMap = #map3, operandSegmentSizes = array<i32: 0, 0, 0>, step = 1 : index, upperBoundMap = #map4}> ({
          ^bb0(%arg4: index):
            %5 = "affine.load"(%2, %arg1, %arg2, %arg3, %arg4) <{map = #map1}> : (memref<?x128x56x56xf32>, index, index, index, index) -> f32
            "affine.store"(%5, %3, %arg1, %arg2, %arg3, %arg4) <{map = #map2}> : (f32, memref<?x128x58x58xf32>, index, index, index, index) -> ()
            "affine.yield"() : () -> ()
          }) : () -> ()
          "affine.yield"() : () -> ()
        }) : () -> ()
        "affine.yield"() : () -> ()
      }) : () -> ()
      "affine.yield"() : () -> ()
    }) : (index) -> ()
    %4 = "memref.alloc"(%1) <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?x58x58x128xf16, #map>
    "zlow.stick"(%3, %4) {layout = "NCHW"} : (memref<?x128x58x58xf32>, memref<?x58x58x128xf16, #map>) -> ()
    "func.return"(%4) : (memref<?x58x58x128xf16, #map>) -> ()
  }) : () -> ()
}) : () -> ()

