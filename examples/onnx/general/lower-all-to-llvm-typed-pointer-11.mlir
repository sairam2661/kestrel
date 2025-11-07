"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_call_zdnn_softmax"}> ({
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x1x1x1x32x64xf16>
    %1 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x1x1x1x32x64xf16>
    %2 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<8192xi8>
    %3 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<3xi64>
    "zlow.softmax"(%0, %2, %3, %1) {act_func = "ACT_NONE"} : (memref<1x1x1x1x32x64xf16>, memref<8192xi8>, memref<3xi64>, memref<1x1x1x1x32x64xf16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

