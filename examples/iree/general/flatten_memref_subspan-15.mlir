#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "load_store_rank_zero_subspan_with_offset"}> ({
  ^bb0(%arg0: index):
    %0 = "hal.interface.binding.subspan"(%arg0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<f32, strided<[], offset: ?>>
    %1 = "hal.interface.binding.subspan"(%arg0) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<f32, strided<[], offset: ?>>
    %2 = "memref.load"(%0) : (memref<f32, strided<[], offset: ?>>) -> f32
    "memref.store"(%2, %1) : (f32, memref<f32, strided<[], offset: ?>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

