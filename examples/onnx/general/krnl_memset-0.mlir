#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1) -> (d0, d1 floordiv 64, 0, 0, 31, d1 mod 64)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<1xi64>, memref<1xi64>) -> memref<?x?xf16, #map1>, sym_name = "lowering_krnl_memset"}> ({
  ^bb0(%arg0: memref<1xi64>, %arg1: memref<1xi64>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %2 = "arith.constant"() <{value = 1.000000e+00 : f16}> : () -> f16
    %3 = "affine.load"(%arg0, %0) <{map = #map}> : (memref<1xi64>, index) -> i64
    %4 = "arith.index_cast"(%3) : (i64) -> index
    %5 = "affine.load"(%arg1, %0) <{map = #map}> : (memref<1xi64>, index) -> i64
    %6 = "arith.index_cast"(%5) : (i64) -> index
    %7 = "memref.alloc"(%4, %6) <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 2, 0>}> : (index, index) -> memref<?x?xf16, #map1>
    "krnl.memset"(%7, %1) {delayed = true} : (memref<?x?xf16, #map1>, f16) -> ()
    "krnl.memset"(%7, %2) {delayed = false} : (memref<?x?xf16, #map1>, f16) -> ()
    "func.return"(%7) : (memref<?x?xf16, #map1>) -> ()
  }) : () -> ()
}) : () -> ()

