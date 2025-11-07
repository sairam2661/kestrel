#map = affine_map<(d0, d1) -> (d0 floordiv 2, d1 floordiv 4, d0 mod 2, d1 mod 4)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?xf32>) -> index, sym_name = "test_krnl_shape_lowering_with_affine_map"}> ({
  ^bb0(%arg0: memref<?x?xf32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "memref.dim"(%arg0, %1) : (memref<?x?xf32>, index) -> index
    %3 = "memref.alloc"(%2) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<?x10xf32, #map>
    %4 = "krnl.shape"(%3) : (memref<?x10xf32, #map>) -> memref<2xindex>
    %5 = "memref.load"(%4, %1) : (memref<2xindex>, index) -> index
    "func.return"(%5) : (index) -> ()
  }) : () -> ()
}) : () -> ()

