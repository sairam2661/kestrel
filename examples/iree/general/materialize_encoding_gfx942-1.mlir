#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#encoding = #iree_encoding.encoding<operand_index = 0 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [255, 513, ?]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "set_encoding_LHS_unroll8x8x4_MFMA_F32_16x16x4_F32"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<255x513xf32>>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<255x513xf32, #encoding>>
    %3 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 255, 513>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<255x513xf32>>) -> tensor<255x513xf32>
    %4 = "iree_encoding.set_encoding"(%3) : (tensor<255x513xf32>) -> tensor<255x513xf32, #encoding>
    "iree_tensor_ext.dispatch.tensor.store"(%4, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 255, 513>, static_strides = array<i64: 1, 1>}> : (tensor<255x513xf32, #encoding>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<255x513xf32, #encoding>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

