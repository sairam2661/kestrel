#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (tensor<2xf32>, tensor<2xf32>), sym_name = "bufferized_subspan_drop_buffer_cast"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4096 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<2xf32, #hal.descriptor_type<storage_buffer>>
    %3 = "amdgpu.fat_raw_buffer_cast"(%2) <{boundsCheck = true, operandSegmentSizes = array<i32: 1, 0, 0>}> : (memref<2xf32, #hal.descriptor_type<storage_buffer>>) -> memref<2xf32, #amdgpu.address_space<fat_raw_buffer>>
    %4 = "iree_codegen.load_from_buffer"(%3) : (memref<2xf32, #amdgpu.address_space<fat_raw_buffer>>) -> tensor<2xf32>
    %5 = "iree_gpu.buffer_resource_cast"(%4, %1) : (tensor<2xf32>, index) -> tensor<2xf32>
    "func.return"(%4, %5) : (tensor<2xf32>, tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

