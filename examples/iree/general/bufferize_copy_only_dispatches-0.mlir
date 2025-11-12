#pipeline_layout = #hal.pipeline.layout<constants = 13, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_insert_slice"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> index
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 5 : index}> : () -> index
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 6 : index}> : () -> index
    %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 7 : index}> : () -> index
    %8 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 8 : index}> : () -> index
    %9 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 9 : index}> : () -> index
    %10 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 10 : index}> : () -> index
    %11 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 11 : index}> : () -> index
    %12 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 12 : index}> : () -> index
    %13 = "hal.interface.binding.subspan"(%11, %12) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xi32>>
    %14 = "hal.interface.binding.subspan"(%9, %10) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xi32>>
    %15 = "iree_tensor_ext.dispatch.tensor.load"(%13, %11, %12, %5, %6, %0, %7, %8) <{operandSegmentSizes = array<i32: 1, 2, 2, 1, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, -9223372036854775808>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xi32>>, index, index, index, index, index, index, index) -> tensor<?xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%15, %14, %9, %10, %1, %2, %0, %3, %4) <{operandSegmentSizes = array<i32: 1, 1, 2, 2, 1, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, 1>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (tensor<?xi32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xi32>>, index, index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

