#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "rocdl_buffer_memory_space_elementwise_copy"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %1 = "arith.index_castui"(%0) : (i32) -> index
    %2 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %3 = "gpu.thread_id"() <{dimension = #gpu<dim x>}> : () -> index
    %4 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> {iree_gpu.use_rocdl_buffer_instructions} : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x256xf32>>
    %5 = "hal.interface.binding.subspan"(%1) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> {iree_gpu.use_rocdl_buffer_instructions} : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<256x256xf32>>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%4, %2, %3) <{operandSegmentSizes = array<i32: 1, 0, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 1>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<256x256xf32>>, index, index) -> tensor<1x1xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %5, %2, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 1>, static_strides = array<i64: 1, 1>}> : (tensor<1x1xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<256x256xf32>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

