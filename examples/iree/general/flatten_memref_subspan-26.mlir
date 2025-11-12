#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<uniform_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (i32, index, index, index, index) -> (), sym_name = "store_uniform_buffer"}> ({
  ^bb0(%arg0: i32, %arg1: index, %arg2: index, %arg3: index, %arg4: index):
    %0 = "hal.interface.binding.subspan"(%arg1) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<2x3x4xi32, strided<[12, 4, 1], offset: ?>, #hal.descriptor_type<uniform_buffer>>
    "memref.store"(%arg0, %0, %arg2, %arg3, %arg4) : (i32, memref<2x3x4xi32, strided<[12, 4, 1], offset: ?>, #hal.descriptor_type<uniform_buffer>>, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

