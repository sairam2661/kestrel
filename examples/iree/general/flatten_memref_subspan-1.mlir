#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (f32, index, index, index, index) -> (), sym_name = "store_subspan_with_offset"}> ({
  ^bb0(%arg0: f32, %arg1: index, %arg2: index, %arg3: index, %arg4: index):
    %0 = "hal.interface.binding.subspan"(%arg1) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<2x3x4xf32, strided<[12, 4, 1], offset: ?>>
    "memref.store"(%arg0, %0, %arg2, %arg3, %arg4) : (f32, memref<2x3x4xf32, strided<[12, 4, 1], offset: ?>>, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

