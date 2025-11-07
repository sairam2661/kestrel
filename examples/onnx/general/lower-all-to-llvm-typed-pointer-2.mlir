"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_stick"}> ({
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10x10xf32>
    %1 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x1x32x64xf16>
    "zlow.stick"(%0, %1) : (memref<10x10xf32>, memref<1x1x32x64xf16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

