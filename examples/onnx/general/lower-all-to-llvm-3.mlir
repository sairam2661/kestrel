"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_unstick"}> ({
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x1x32x64xf16>
    %1 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10x10xf32>
    "zlow.unstick"(%0, %1) : (memref<1x1x32x64xf16>, memref<10x10xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

