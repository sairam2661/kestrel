"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_call_zdnn_div"}> ({
    %0 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x1x32x64xf16>
    %1 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x1x32x64xf16>
    %2 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x1x32x64xf16>
    %3 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<2xi64>
    "zlow.div"(%0, %1, %3, %2) {layout = "2D"} : (memref<1x1x32x64xf16>, memref<1x1x32x64xf16>, memref<2xi64>, memref<1x1x32x64xf16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

