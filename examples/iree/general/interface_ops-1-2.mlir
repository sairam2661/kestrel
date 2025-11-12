#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "interface_io_subspan"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 8 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0, %arg0, %arg1) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> memref<?x4x?x16xi8>
    %2 = "hal.interface.binding.subspan"() <{alignment = 16 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<16xi8>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

