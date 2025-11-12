#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_unpack_fully_dynamic"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "util.unfoldable_constant"() <{value = 2 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x2x2x2xi32>>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x4xi32>>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4, 4>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x4xi32>>) -> tensor<4x4xi32>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%2, %1, %1) <{operandSegmentSizes = array<i32: 1, 0, 0, 2, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 2, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x2x2x2xi32>>, index, index) -> tensor<2x2x?x?xi32>
    %6 = "linalg.unpack"(%5, %4, %1, %1) <{inner_dims_pos = array<i64: 0, 1>, static_inner_tiles = array<i64: -9223372036854775808, -9223372036854775808>}> : (tensor<2x2x?x?xi32>, tensor<4x4xi32>, index, index) -> tensor<4x4xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4, 4>, static_strides = array<i64: 1, 1>}> : (tensor<4x4xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x4xi32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

