#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (f32, index, index, index, index) -> (), sym_name = "store_subspan_with_flow_control"}> ({
  ^bb0(%arg0: f32, %arg1: index, %arg2: index, %arg3: index, %arg4: index):
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%arg1, %0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?x3x4xf32, strided<[12, 4, 1], offset: ?>>
    "scf.for"(%arg2, %arg3, %arg4) ({
    ^bb0(%arg5: index):
      "memref.store"(%arg0, %1, %arg2, %arg3, %arg4) : (f32, memref<?x3x4xf32, strided<[12, 4, 1], offset: ?>>, index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

