#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index, index, index) -> f32, sym_name = "expand_shape"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index):
    %0 = "hal.interface.binding.subspan"(%arg0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<20x42xf32, strided<[42, 1], offset: ?>>
    %1 = "memref.expand_shape"(%0) <{reassociation = [[0, 1], [2, 3]], static_output_shape = array<i64: 4, 5, 6, 7>}> : (memref<20x42xf32, strided<[42, 1], offset: ?>>) -> memref<4x5x6x7xf32, strided<[210, 42, 7, 1], offset: ?>>
    %2 = "memref.load"(%1, %arg1, %arg2, %arg3, %arg4) : (memref<4x5x6x7xf32, strided<[210, 42, 7, 1], offset: ?>>, index, index, index, index) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

