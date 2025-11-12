#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (memref<index>, index, index, index, index, index), sym_name = "resolve_binding_subspan_offset_index_memref"}> ({
  ^bb0(%arg0: index):
    %0 = "hal.interface.binding.subspan"(%arg0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<512x384xindex, strided<[384, 1], offset: ?>>
    %1:6 = "memref.extract_strided_metadata"(%0) : (memref<512x384xindex, strided<[384, 1], offset: ?>>) -> (memref<index>, index, index, index, index, index)
    "func.return"(%1#0, %1#1, %1#2, %1#3, %1#4, %1#5) : (memref<index>, index, index, index, index, index) -> ()
  }) : () -> ()
}) : () -> ()

