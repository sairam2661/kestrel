#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dynamic_unpack"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %3 = "arith.index_castui"(%1) : (i32) -> index
    %4 = "arith.index_castui"(%2) : (i32) -> index
    %5 = "hal.interface.binding.subspan"(%0, %3, %3) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x4x4xf32>>
    %6 = "hal.interface.binding.subspan"(%0, %4, %4) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xf32>>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%5, %3, %3, %3, %3) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, 4, 4>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x4x4xf32>>, index, index, index, index) -> tensor<?x?x4x4xf32>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%6, %4, %4, %4, %4) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xf32>>, index, index, index, index) -> tensor<?x?xf32>
    %9 = "linalg.unpack"(%7, %8) <{inner_dims_pos = array<i64: 0, 1>, static_inner_tiles = array<i64: 4, 4>}> : (tensor<?x?x4x4xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%9, %6, %4, %4, %4, %4) <{operandSegmentSizes = array<i32: 1, 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xf32>>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

