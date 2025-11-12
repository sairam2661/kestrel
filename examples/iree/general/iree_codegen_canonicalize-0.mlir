#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> memref<?xf32, #hal.descriptor_type<storage_buffer>>, sym_name = "fold_dynamic_trivial_subview"}> ({
  ^bb0(%arg0: index):
    %0 = "hal.interface.binding.subspan"(%arg0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> memref<?xf32, #hal.descriptor_type<storage_buffer>>
    %1 = "memref.assume_alignment"(%0) <{alignment = 64 : i32}> : (memref<?xf32, #hal.descriptor_type<storage_buffer>>) -> memref<?xf32, #hal.descriptor_type<storage_buffer>>
    %2 = "memref.subview"(%1, %arg0) <{operandSegmentSizes = array<i32: 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (memref<?xf32, #hal.descriptor_type<storage_buffer>>, index) -> memref<?xf32, #hal.descriptor_type<storage_buffer>>
    "func.return"(%2) : (memref<?xf32, #hal.descriptor_type<storage_buffer>>) -> ()
  }) : () -> ()
}) : () -> ()

