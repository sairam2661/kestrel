#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "static_collapse_shape_to_1d_static"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "hal.interface.binding.subspan"(%arg0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<6x7x8xf32, strided<[56, 8, 1], offset: ?>>
    %1 = "memref.collapse_shape"(%0) <{reassociation = [[0, 1, 2]]}> : (memref<6x7x8xf32, strided<[56, 8, 1], offset: ?>>) -> memref<336xf32, strided<[1], offset: ?>>
    "unregistered.opaque"(%1) : (memref<336xf32, strided<[1], offset: ?>>) -> ()
  }) : () -> ()
}) : () -> ()

