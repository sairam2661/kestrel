#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (f32, index, index, index, index, index) -> (), sym_name = "store_subspan_with_all_dynamic_dim"}> ({
  ^bb0(%arg0: f32, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index):
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
    %4 = "hal.interface.binding.subspan"(%arg1, %0, %1, %2, %3) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 4>}> : (index, index, index, index, index) -> memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>>
    "memref.store"(%arg0, %4, %arg2, %arg3, %arg4, %arg5) : (f32, memref<?x?x?x?xf32, strided<[?, ?, ?, 1], offset: ?>>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

