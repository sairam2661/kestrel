#pipeline_layout = #hal.pipeline.layout<constants = 5, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "rank_reduced_subtensor_insert"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> index
    %5 = "hal.interface.binding.subspan"(%0, %1) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>
    %6 = "hal.interface.binding.subspan"(%2, %3, %4) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 3>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?x?xf32>>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%5, %0, %1, %0, %1) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>, index, index, index, index) -> tensor<?x?xf32>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%6, %2, %3, %4, %2, %3, %4) <{operandSegmentSizes = array<i32: 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?x?xf32>>, index, index, index, index, index, index) -> tensor<?x?x?xf32>
    %9 = "tensor.insert_slice"(%7, %8, %3, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 2, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (tensor<?x?xf32>, tensor<?x?x?xf32>, index, index) -> tensor<?x?x?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%9, %6, %2, %3, %4, %2, %3, %4) <{operandSegmentSizes = array<i32: 1, 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (tensor<?x?x?xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?x?xf32>>, index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

