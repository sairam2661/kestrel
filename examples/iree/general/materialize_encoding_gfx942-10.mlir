#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#encoding = #iree_encoding.encoding<operand_index = 2 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [255, 513, ?]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "unset_encoding_ACC_dynamic_unroll8x8x4_MFMA_F32_16x16x4_F32"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %3 = "hal.interface.binding.subspan"(%0, %1, %2) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32, #encoding>>
    %4 = "hal.interface.binding.subspan"(%0, %1, %2) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xf32>>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%3, %1, %2, %1, %2) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32, #encoding>>, index, index, index, index) -> tensor<?x?xf32, #encoding>
    %6 = "iree_encoding.unset_encoding"(%5, %1, %2) : (tensor<?x?xf32, #encoding>, index, index) -> tensor<?x?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %4, %1, %2, %1, %2) <{operandSegmentSizes = array<i32: 1, 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xf32>>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

