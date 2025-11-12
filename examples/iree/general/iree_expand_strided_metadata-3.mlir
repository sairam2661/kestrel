#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (memref<f32>, index, index, index, index, index), sym_name = "resolve_binding_subspan_zero_offset_memref"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<512x384xf32>
    %2:6 = "memref.extract_strided_metadata"(%1) : (memref<512x384xf32>) -> (memref<f32>, index, index, index, index, index)
    "func.return"(%2#0, %2#1, %2#2, %2#3, %2#4, %2#5) : (memref<f32>, index, index, index, index, index) -> ()
  }) : () -> ()
}) : () -> ()

