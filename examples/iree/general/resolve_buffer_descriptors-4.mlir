#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (!util.buffer, index, index, index, index, index), sym_name = "resolve_binding_subspan_zero_offset_with_assume_alignment"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<512x384xf32>
    %2 = "memref.assume_alignment"(%1) <{alignment = 64 : i32}> : (memref<512x384xf32>) -> memref<512x384xf32>
    %3:6 = "vmvx.get_buffer_descriptor"(%2) : (memref<512x384xf32>) -> (!util.buffer, index, index, index, index, index)
    "func.return"(%3#0, %3#1, %3#2, %3#3, %3#4, %3#5) : (!util.buffer, index, index, index, index, index) -> ()
  }) : () -> ()
}) : () -> ()

