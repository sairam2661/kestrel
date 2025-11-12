#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "pack_at_source"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x16xf32>>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<4x4x4x4xf32>>
    %3 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 16, 16>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<16x16xf32>>) -> tensor<16x16xf32>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 4, 4, 4, 4>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<4x4x4x4xf32>>) -> tensor<4x4x4x4xf32>
    %5 = "linalg.pack"(%3, %4) <{inner_dims_pos = array<i64: 0, 1>, operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_inner_tiles = array<i64: 4, 4>}> : (tensor<16x16xf32>, tensor<4x4x4x4xf32>) -> tensor<4x4x4x4xf32>
    %6 = "util.optimization_barrier"(%5) : (tensor<4x4x4x4xf32>) -> tensor<4x4x4x4xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 4, 4, 4, 4>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<4x4x4x4xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<4x4x4x4xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

