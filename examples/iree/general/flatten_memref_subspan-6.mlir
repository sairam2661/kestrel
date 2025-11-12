#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (f32, index, index, index, index, index) -> (), sym_name = "store_subspan_with_mixed_dynamic_dim"}> ({
  ^bb0(%arg0: f32, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index):
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%arg1, %0, %1) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> memref<?x4x?x8xf32, strided<[?, ?, 8, 1], offset: ?>>
    "memref.store"(%arg0, %2, %arg2, %arg3, %arg4, %arg5) : (f32, memref<?x4x?x8xf32, strided<[?, ?, 8, 1], offset: ?>>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

