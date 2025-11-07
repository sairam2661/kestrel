"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_stick_for_gru"}> ({
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x10x10xf32>
    %1 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x10x10xf32>
    %2 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x10x10xf32>
    %3 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x1x32x64xf16>
    "zlow.stickForGRU"(%0, %1, %2, %3) : (memref<1x10x10xf32>, memref<1x10x10xf32>, memref<1x10x10xf32>, memref<1x1x32x64xf16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

