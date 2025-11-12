#pipeline_layout = #hal.pipeline.layout<constants = 7, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "slice_multiple_copy"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> index
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 5 : index}> : () -> index
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 6 : index}> : () -> index
    %7 = "hal.interface.binding.subspan"(%6, %6, %6) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 3>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xi32>>
    %8 = "hal.interface.binding.subspan"(%3, %4, %5) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 3>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?x?xi32>>
    %9 = "hal.interface.binding.subspan"(%3, %5) <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xi32>>
    %10 = "iree_tensor_ext.dispatch.tensor.load"(%7, %6, %6, %6, %6, %6, %6) <{operandSegmentSizes = array<i32: 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xi32>>, index, index, index, index, index, index) -> tensor<?x?x?xi32>
    %11 = "tensor.extract_slice"(%10, %0, %1, %2, %3, %4, %5) <{operandSegmentSizes = array<i32: 1, 3, 3, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (tensor<?x?x?xi32>, index, index, index, index, index, index) -> tensor<?x?x?xi32>
    %12 = "tensor.extract_slice"(%10, %0, %1, %2, %3, %5) <{operandSegmentSizes = array<i32: 1, 3, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, 1, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (tensor<?x?x?xi32>, index, index, index, index, index) -> tensor<?x?xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%11, %8, %3, %4, %5, %3, %4, %5) <{operandSegmentSizes = array<i32: 1, 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (tensor<?x?x?xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?x?xi32>>, index, index, index, index, index, index) -> ()
    "iree_tensor_ext.dispatch.tensor.store"(%12, %9, %3, %5, %0, %2, %3, %5) <{operandSegmentSizes = array<i32: 1, 1, 2, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xi32>>, index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

