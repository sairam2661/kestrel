#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> f32, sym_name = "subview"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%arg0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<32x128xf32, strided<[128, 1], offset: ?>>
    %2 = "memref.subview"(%1, %arg1, %arg2) <{operandSegmentSizes = array<i32: 1, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 16, 8>, static_strides = array<i64: 1, 1>}> : (memref<32x128xf32, strided<[128, 1], offset: ?>>, index, index) -> memref<16x8xf32, strided<[128, 1], offset: ?>>
    %3 = "memref.load"(%2, %0, %0) : (memref<16x8xf32, strided<[128, 1], offset: ?>>, index, index) -> f32
    "func.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

