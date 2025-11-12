#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> f32, sym_name = "reinterpret_cast_lowering_dynamic_zero_offset"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %3 = "hal.interface.binding.subspan"(%1, %2) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> memref<?x?xf32>
    %4 = "memref.reinterpret_cast"(%3, %0) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64>, static_strides = array<i64>}> : (memref<?x?xf32>, index) -> memref<f32, strided<[], offset: ?>>
    %5 = "memref.load"(%4) : (memref<f32, strided<[], offset: ?>>) -> f32
    "func.return"(%5) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

