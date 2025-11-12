#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "rank_reducing_slices"}> ({
    %0 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x16xf32>>
    %1 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x16xf32>>
    %2 = "iree_tensor_ext.dispatch.tensor.load"(%0) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 2>, static_sizes = array<i64: 1, 12>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<8x16xf32>>) -> tensor<12xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%2, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 4>, static_sizes = array<i64: 1, 12>, static_strides = array<i64: 1, 1>}> : (tensor<12xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x16xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

