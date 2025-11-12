#map = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d1)>
#map5 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#encoding = #iree_encoding.encoding<operand_index = 0 : index, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2]>
#encoding1 = #iree_encoding.encoding<operand_index = 0 : index, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [[#map, #map3], #map4, #map2]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dequantization"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x128x64xi8, #encoding>>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x64xf32, #encoding1>>
    %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x64xf32, #encoding1>>
    %5 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x128x64xf32, #encoding>>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 2, 128, 64>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x128x64xi8, #encoding>>) -> tensor<2x128x64xi8, #encoding>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 2, 64>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x64xf32, #encoding1>>) -> tensor<2x64xf32, #encoding1>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 2, 64>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x64xf32, #encoding1>>) -> tensor<2x64xf32, #encoding1>
    %9 = "tensor.empty"() : () -> tensor<2x128x64xf32, #encoding>
    %10 = "linalg.generic"(%6, %7, %8, %9) <{indexing_maps = [#map5, #map3, #map3, #map5], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
    ^bb0(%arg0: i8, %arg1: f32, %arg2: f32, %arg3: f32):
      %11 = "arith.extui"(%arg0) : (i8) -> i32
      %12 = "arith.uitofp"(%11) : (i32) -> f32
      %13 = "arith.subf"(%12, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %14 = "arith.mulf"(%13, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%14) : (f32) -> ()
    }) : (tensor<2x128x64xi8, #encoding>, tensor<2x64xf32, #encoding1>, tensor<2x64xf32, #encoding1>, tensor<2x128x64xf32, #encoding>) -> tensor<2x128x64xf32, #encoding>
    "iree_tensor_ext.dispatch.tensor.store"(%10, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 2, 128, 64>, static_strides = array<i64: 1, 1, 1>}> : (tensor<2x128x64xf32, #encoding>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x128x64xf32, #encoding>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

