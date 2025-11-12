#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "winograd_filter_transform"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x3x64x128xf32>>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x8x64x128xf32>>
    %3 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 3, 3, 64, 128>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<3x3x64x128xf32>>) -> tensor<3x3x64x128xf32>
    %4 = "tensor.empty"() : () -> tensor<8x8x64x128xf32>
    %5 = "iree_linalg_ext.winograd.filter_transform"(%3, %4) <{kernel_dimensions = array<i64: 0, 1>, kernel_size = 3 : i64, operandSegmentSizes = array<i32: 1, 1>, output_tile_size = 6 : i64}> : (tensor<3x3x64x128xf32>, tensor<8x8x64x128xf32>) -> tensor<8x8x64x128xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%5, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 8, 8, 64, 128>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<8x8x64x128xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x8x64x128xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

