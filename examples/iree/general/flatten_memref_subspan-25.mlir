#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<uniform_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index, index) -> i32, sym_name = "load_uniform_buffer"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index):
    %0 = "hal.interface.binding.subspan"(%arg0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<2x3x4xi32, strided<[12, 4, 1], offset: ?>, #hal.descriptor_type<uniform_buffer>>
    %1 = "memref.load"(%0, %arg1, %arg2, %arg3) : (memref<2x3x4xi32, strided<[12, 4, 1], offset: ?>, #hal.descriptor_type<uniform_buffer>>, index, index, index) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

