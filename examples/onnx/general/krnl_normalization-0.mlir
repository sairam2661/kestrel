#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2 floordiv 32, d3 floordiv 32, d2 mod 32, d3 mod 32)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<1x16384xf32>) -> memref<1x16x4x4xf32, #map>, sym_name = "test_krnl_memcpy_norm"}> ({
  ^bb0(%arg0: memref<1x16384xf32>):
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x16x4x4xf32, #map>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 16384 : i64}> : () -> i64
    "krnl.memcpy"(%0, %arg0, %2, %1, %1) : (memref<1x16x4x4xf32, #map>, memref<1x16384xf32>, i64, index, index) -> ()
    "func.return"(%0) : (memref<1x16x4x4xf32, #map>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "test_getref_norm"}> ({
    %0 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %1 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x81920xf32>
    %2 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x16x4x4xf32, #map>
    %3 = "krnl.getref"(%1, %0) : (memref<1x81920xf32>, i64) -> memref<1x16x4x4xf32>
    "memref.dealloc"(%2) : (memref<1x16x4x4xf32, #map>) -> ()
    "memref.dealloc"(%1) : (memref<1x81920xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

