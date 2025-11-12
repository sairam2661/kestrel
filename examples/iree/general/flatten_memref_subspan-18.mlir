#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> f32, sym_name = "expand_shape2"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "hal.interface.binding.subspan"(%arg0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<128xf32, strided<[1], offset: ?>>
    %1 = "memref.expand_shape"(%0) <{reassociation = [[0, 1]], static_output_shape = array<i64: 1, 128>}> : (memref<128xf32, strided<[1], offset: ?>>) -> memref<1x128xf32, strided<[128, 1], offset: ?>>
    %2 = "memref.load"(%1, %arg1, %arg2) : (memref<1x128xf32, strided<[128, 1], offset: ?>>, index, index) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

