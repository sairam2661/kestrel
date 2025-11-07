#map = affine_map<(d0, d1) -> (0, d1 floordiv 64, 0, d0 floordiv 32, d0 mod 32, d1 mod 64)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?xf16, #map>) -> memref<?x?xf32>, sym_name = "donot_remove_unstick"}> ({
  ^bb0(%arg0: memref<?x?xf16, #map>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "memref.dim"(%arg0, %0) : (memref<?x?xf16, #map>, index) -> index
    %3 = "memref.dim"(%arg0, %1) : (memref<?x?xf16, #map>, index) -> index
    %4 = "memref.alloc"(%2, %3) <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 2, 0>}> : (index, index) -> memref<?x?xf32>
    "zlow.unstick"(%arg0, %4) {layout = "2D"} : (memref<?x?xf16, #map>, memref<?x?xf32>) -> ()
    "func.return"(%4) : (memref<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

