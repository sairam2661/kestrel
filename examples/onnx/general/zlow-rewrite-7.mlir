"builtin.module"() ({
  "func.func"() <{function_type = (memref<1x1x1x1x32x64xf16>) -> memref<1x1x1x1x32x64xf16>, sym_name = "test_should_not_remove_unstick_view_stick_nchw"}> ({
  ^bb0(%arg0: memref<1x1x1x1x32x64xf16>):
    %0 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x32x1x22xf32>
    "zlow.unstick"(%arg0, %0) {layout = "NCHW"} : (memref<1x1x1x1x32x64xf16>, memref<1x32x1x22xf32>) -> ()
    %1 = "memref.reinterpret_cast"(%0) <{operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 1, 32, 22>, static_strides = array<i64: 704, 22, 1>}> : (memref<1x32x1x22xf32>) -> memref<1x32x22xf32>
    %2 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1x1x1x1x32x64xf16>
    "zlow.stick"(%1, %2) {layout = "3DS"} : (memref<1x32x22xf32>, memref<1x1x1x1x32x64xf16>) -> ()
    "func.return"(%2) : (memref<1x1x1x1x32x64xf16>) -> ()
  }) : () -> ()
}) : () -> ()

