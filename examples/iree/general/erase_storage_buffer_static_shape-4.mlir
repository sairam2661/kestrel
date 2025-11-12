#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> f32, sym_name = "storage_buffer_subview"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%arg0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<128xf32, strided<[1], offset: ?>, #hal.descriptor_type<storage_buffer>>
    %2 = "memref.subview"(%1, %arg1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (memref<128xf32, strided<[1], offset: ?>, #hal.descriptor_type<storage_buffer>>, index) -> memref<16xf32, strided<[1], offset: ?>, #hal.descriptor_type<storage_buffer>>
    %3 = "memref.load"(%2, %0) : (memref<16xf32, strided<[1], offset: ?>, #hal.descriptor_type<storage_buffer>>, index) -> f32
    "func.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

