#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> (), sym_name = "storage_buffer_load_store"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "hal.interface.binding.subspan"(%arg0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<256xf32, #hal.descriptor_type<storage_buffer>>
    %1 = "hal.interface.binding.subspan"(%arg0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<256xf32, #hal.descriptor_type<storage_buffer>>
    %2 = "memref.load"(%0, %arg1) : (memref<256xf32, #hal.descriptor_type<storage_buffer>>, index) -> f32
    "memref.store"(%2, %1, %arg2) : (f32, memref<256xf32, #hal.descriptor_type<storage_buffer>>, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

