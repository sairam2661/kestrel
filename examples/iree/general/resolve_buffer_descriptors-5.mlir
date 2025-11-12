#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (!util.buffer, index, index, index, index, index), sym_name = "resolve_binding_subspan_offset_index"}> ({
  ^bb0(%arg0: index):
    %0 = "hal.interface.binding.subspan"(%arg0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<512x384xindex>
    %1:6 = "vmvx.get_buffer_descriptor"(%0) : (memref<512x384xindex>) -> (!util.buffer, index, index, index, index, index)
    "func.return"(%1#0, %1#1, %1#2, %1#3, %1#4, %1#5) : (!util.buffer, index, index, index, index, index) -> ()
  }) : () -> ()
}) : () -> ()

