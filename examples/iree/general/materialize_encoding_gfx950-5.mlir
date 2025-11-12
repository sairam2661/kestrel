#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#encoding = #iree_encoding.encoding<operand_index = 0 : i64, op_type =  matmul, element_types = [f8E4M3FN, f8E4M3FN, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [?, ?, ?, ?]>
#encoding1 = #iree_encoding.encoding<operand_index = 1 : i64, op_type =  matmul, element_types = [f8E4M3FN, f8E4M3FN, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [?, ?, ?, ?]>
#encoding2 = #iree_encoding.encoding<operand_index = 2 : i64, op_type =  matmul, element_types = [f8E4M3FN, f8E4M3FN, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [?, ?, ?, ?]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "batch_matmul_lowering_MFMA_F32_16x16x128_F8E4M3FN"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
    %5 = "hal.interface.binding.subspan"(%0, %1, %2, %4) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 3>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xf8E4M3FN, #encoding>>
    %6 = "hal.interface.binding.subspan"(%0, %1, %4, %3) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 3>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xf8E4M3FN, #encoding1>>
    %7 = "hal.interface.binding.subspan"(%0, %1, %2, %3) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 3>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?x?xf32, #encoding2>>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%5, %1, %2, %4, %1, %2, %4) <{operandSegmentSizes = array<i32: 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xf8E4M3FN, #encoding>>, index, index, index, index, index, index) -> tensor<?x?x?xf8E4M3FN, #encoding>
    %9 = "iree_tensor_ext.dispatch.tensor.load"(%6, %1, %4, %3, %1, %4, %3) <{operandSegmentSizes = array<i32: 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xf8E4M3FN, #encoding1>>, index, index, index, index, index, index) -> tensor<?x?x?xf8E4M3FN, #encoding1>
    %10 = "iree_tensor_ext.dispatch.tensor.load"(%7, %1, %2, %3, %1, %2, %3) <{operandSegmentSizes = array<i32: 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?x?xf32, #encoding2>>, index, index, index, index, index, index) -> tensor<?x?x?xf32, #encoding2>
    %11 = "linalg.batch_matmul"(%8, %9, %10) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f8E4M3FN, %arg1: f8E4M3FN, %arg2: f32):
      %12 = "arith.extf"(%arg0) : (f8E4M3FN) -> f32
      %13 = "arith.extf"(%arg1) : (f8E4M3FN) -> f32
      %14 = "arith.mulf"(%12, %13) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %15 = "arith.addf"(%arg2, %14) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%15) : (f32) -> ()
    }) : (tensor<?x?x?xf8E4M3FN, #encoding>, tensor<?x?x?xf8E4M3FN, #encoding1>, tensor<?x?x?xf32, #encoding2>) -> tensor<?x?x?xf32, #encoding2>
    "iree_tensor_ext.dispatch.tensor.store"(%11, %7, %1, %2, %3, %1, %2, %3) <{operandSegmentSizes = array<i32: 1, 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (tensor<?x?x?xf32, #encoding2>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?x?xf32, #encoding2>>, index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

