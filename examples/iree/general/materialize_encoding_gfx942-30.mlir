#map = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#encoding = #iree_encoding.encoding<operand_index = 0 : index, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "multi_result_generic"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x128x64xf32, #encoding>>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x128x64xf32, #encoding>>
    %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x128x64xf16, #encoding>>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 2, 128, 64>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x128x64xf32, #encoding>>) -> tensor<2x128x64xf32, #encoding>
    %6 = "tensor.empty"() : () -> tensor<2x128x64xf32, #encoding>
    %7 = "tensor.empty"() : () -> tensor<2x128x64xf16, #encoding>
    %8:2 = "linalg.generic"(%5, %6, %7) <{indexing_maps = [#map3, #map3, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 2>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f16):
      %9 = "arith.addf"(%arg0, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %10 = "arith.truncf"(%9) : (f32) -> f16
      "linalg.yield"(%9, %10) : (f32, f16) -> ()
    }) : (tensor<2x128x64xf32, #encoding>, tensor<2x128x64xf32, #encoding>, tensor<2x128x64xf16, #encoding>) -> (tensor<2x128x64xf32, #encoding>, tensor<2x128x64xf16, #encoding>)
    "iree_tensor_ext.dispatch.tensor.store"(%8#0, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 2, 128, 64>, static_strides = array<i64: 1, 1, 1>}> : (tensor<2x128x64xf32, #encoding>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x128x64xf32, #encoding>>) -> ()
    "iree_tensor_ext.dispatch.tensor.store"(%8#1, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 2, 128, 64>, static_strides = array<i64: 1, 1, 1>}> : (tensor<2x128x64xf16, #encoding>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x128x64xf16, #encoding>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

