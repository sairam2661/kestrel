#map = affine_map<(d0, d1) -> (0, d1 floordiv 64, 0, d0 floordiv 32, d0 mod 32, d1 mod 64)>
#map1 = affine_map<(d0, d1) -> (0, d1 floordiv 64, 0, d0 floordiv 64, d0 mod 64, d1 mod 64)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?xf16, #map>) -> memref<?x?xf16, #map1>, sym_name = "unstick_stick_not_removal_diff_layout"}> ({
  ^bb0(%arg0: memref<?x?xf16, #map>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "memref.dim"(%arg0, %0) : (memref<?x?xf16, #map>, index) -> index
    %3 = "memref.dim"(%arg0, %1) : (memref<?x?xf16, #map>, index) -> index
    %4 = "memref.alloc"(%2, %3) <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 2, 0>}> : (index, index) -> memref<?x?xf32>
    "zlow.unstick"(%arg0, %4) {layout = "2D"} : (memref<?x?xf16, #map>, memref<?x?xf32>) -> ()
    %5 = "memref.dim"(%4, %0) : (memref<?x?xf32>, index) -> index
    %6 = "memref.dim"(%4, %1) : (memref<?x?xf32>, index) -> index
    %7 = "memref.alloc"(%6, %5) <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 2, 0>}> : (index, index) -> memref<?x?xf16, #map1>
    "zlow.stick"(%4, %7) {layout = "2DS"} : (memref<?x?xf32>, memref<?x?xf16, #map1>) -> ()
    "func.return"(%7) : (memref<?x?xf16, #map1>) -> ()
  }) : () -> ()
}) : () -> ()

