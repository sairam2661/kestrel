#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> memref<?xf32, #hal.descriptor_type<storage_buffer>>, sym_name = "storage_buffer_cast"}> ({
  ^bb0(%arg0: index):
    %0 = "hal.interface.binding.subspan"(%arg0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<16xf32, #hal.descriptor_type<storage_buffer>>
    %1 = "memref.cast"(%0) : (memref<16xf32, #hal.descriptor_type<storage_buffer>>) -> memref<?xf32, #hal.descriptor_type<storage_buffer>>
    "func.return"(%1) : (memref<?xf32, #hal.descriptor_type<storage_buffer>>) -> ()
  }) : () -> ()
}) : () -> ()

