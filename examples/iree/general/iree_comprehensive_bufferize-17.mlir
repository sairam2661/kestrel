#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "slice"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
    %4 = "hal.interface.binding.subspan"(%0, %1) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xi32>>
    %5 = "hal.interface.binding.subspan"(%2, %3) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xi32>>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%4, %0, %1, %0, %1) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xi32>>, index, index, index, index) -> tensor<?x?xi32>
    %7 = "tensor.extract_slice"(%6, %0, %1, %2, %3) <{operandSegmentSizes = array<i32: 1, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xi32>, index, index, index, index) -> tensor<?x?xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%7, %5, %2, %3, %2, %3) <{operandSegmentSizes = array<i32: 1, 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xi32>>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

