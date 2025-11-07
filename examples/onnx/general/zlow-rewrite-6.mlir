"builtin.module"() ({
  "func.func"() <{function_type = (memref<7x4x1x8x32x64xf16>) -> memref<7x4x1x8x32x64xf16>, sym_name = "test_remove_unstick_view_stick"}> ({
  ^bb0(%arg0: memref<7x4x1x8x32x64xf16>):
    %0 = "memref.alloc"() <{alignment = 16 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<7x1x256x200xf32>
    "zlow.unstick"(%arg0, %0) {layout = "4DS"} : (memref<7x4x1x8x32x64xf16>, memref<7x1x256x200xf32>) -> ()
    %1 = "memref.reinterpret_cast"(%0) <{operandSegmentSizes = array<i32: 1, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 7, 256, 200>, static_strides = array<i64: 51200, 200, 1>}> : (memref<7x1x256x200xf32>) -> memref<7x256x200xf32>
    %2 = "memref.alloc"() <{alignment = 4096 : i64, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<7x4x1x8x32x64xf16>
    "zlow.stick"(%1, %2) {layout = "3DS"} : (memref<7x256x200xf32>, memref<7x4x1x8x32x64xf16>) -> ()
    "func.return"(%2) : (memref<7x4x1x8x32x64xf16>) -> ()
  }) : () -> ()
}) : () -> ()

