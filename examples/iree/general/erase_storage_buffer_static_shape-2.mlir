#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<uniform_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> f32, sym_name = "uniform_buffer_load"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "hal.interface.binding.subspan"(%arg0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<256xf32>
    %1 = "memref.load"(%0, %arg1) : (memref<256xf32>, index) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

