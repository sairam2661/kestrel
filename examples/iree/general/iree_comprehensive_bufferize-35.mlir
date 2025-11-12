#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "bufferize_transfer_op_inplace"}> ({
    %0 = "arith.constant"() <{value = 3 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    %5 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x3xf32>>
    %6 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x4xf32>>
    %7 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<2x4xf32>>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%5, %2, %2, %4, %4) <{operandSegmentSizes = array<i32: 1, 0, 2, 0, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 2, 3>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x3xf32>>, index, index, index, index) -> tensor<2x3xf32>
    %9 = "iree_tensor_ext.dispatch.tensor.load"(%6, %2, %2, %4, %4) <{operandSegmentSizes = array<i32: 1, 0, 2, 0, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 3, 1>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<3x4xf32>>, index, index, index, index) -> tensor<3x1xf32>
    %10 = "iree_tensor_ext.dispatch.tensor.load"(%7, %2, %2, %4, %4) <{operandSegmentSizes = array<i32: 1, 0, 2, 0, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 2, 1>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<2x4xf32>>, index, index, index, index) -> tensor<2x1xf32>
    %11 = "vector.transfer_read"(%8, %2, %2, %1) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map}> : (tensor<2x3xf32>, index, index, f32) -> vector<1x1xf32>
    %12 = "vector.transfer_read"(%8, %2, %4, %1) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map}> : (tensor<2x3xf32>, index, index, f32) -> vector<1x1xf32>
    %13 = "vector.transfer_read"(%8, %2, %3, %1) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map}> : (tensor<2x3xf32>, index, index, f32) -> vector<1x1xf32>
    %14 = "vector.transfer_read"(%8, %4, %2, %1) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map}> : (tensor<2x3xf32>, index, index, f32) -> vector<1x1xf32>
    %15 = "vector.transfer_read"(%8, %4, %4, %1) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map}> : (tensor<2x3xf32>, index, index, f32) -> vector<1x1xf32>
    %16 = "vector.transfer_read"(%8, %4, %3, %1) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map}> : (tensor<2x3xf32>, index, index, f32) -> vector<1x1xf32>
    %17 = "vector.transfer_read"(%9, %2, %2, %1) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map}> : (tensor<3x1xf32>, index, index, f32) -> vector<1x1xf32>
    %18 = "vector.transfer_read"(%9, %4, %2, %1) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map}> : (tensor<3x1xf32>, index, index, f32) -> vector<1x1xf32>
    %19 = "vector.transfer_read"(%9, %3, %2, %1) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map}> : (tensor<3x1xf32>, index, index, f32) -> vector<1x1xf32>
    %20 = "vector.transfer_read"(%10, %2, %2, %1) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map}> : (tensor<2x1xf32>, index, index, f32) -> vector<1x1xf32>
    %21 = "vector.transfer_read"(%10, %4, %2, %1) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 2, 1, 0>, permutation_map = #map}> : (tensor<2x1xf32>, index, index, f32) -> vector<1x1xf32>
    %22 = "vector.contract"(%11, %17, %20) <{indexing_maps = [#map1, #map2, #map3], iterator_types = [#vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>], kind = #vector.kind<add>}> : (vector<1x1xf32>, vector<1x1xf32>, vector<1x1xf32>) -> vector<1x1xf32>
    %23 = "vector.contract"(%12, %18, %22) <{indexing_maps = [#map1, #map2, #map3], iterator_types = [#vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>], kind = #vector.kind<add>}> : (vector<1x1xf32>, vector<1x1xf32>, vector<1x1xf32>) -> vector<1x1xf32>
    %24 = "vector.contract"(%13, %19, %23) <{indexing_maps = [#map1, #map2, #map3], iterator_types = [#vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>], kind = #vector.kind<add>}> : (vector<1x1xf32>, vector<1x1xf32>, vector<1x1xf32>) -> vector<1x1xf32>
    %25 = "vector.contract"(%14, %17, %21) <{indexing_maps = [#map1, #map2, #map3], iterator_types = [#vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>], kind = #vector.kind<add>}> : (vector<1x1xf32>, vector<1x1xf32>, vector<1x1xf32>) -> vector<1x1xf32>
    %26 = "vector.contract"(%15, %18, %25) <{indexing_maps = [#map1, #map2, #map3], iterator_types = [#vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>], kind = #vector.kind<add>}> : (vector<1x1xf32>, vector<1x1xf32>, vector<1x1xf32>) -> vector<1x1xf32>
    %27 = "vector.contract"(%16, %19, %26) <{indexing_maps = [#map1, #map2, #map3], iterator_types = [#vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>], kind = #vector.kind<add>}> : (vector<1x1xf32>, vector<1x1xf32>, vector<1x1xf32>) -> vector<1x1xf32>
    %28 = "vector.transfer_write"(%24, %10, %2, %2) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 1, 2, 0>, permutation_map = #map}> : (vector<1x1xf32>, tensor<2x1xf32>, index, index) -> tensor<2x1xf32>
    %29 = "vector.transfer_write"(%27, %28, %4, %2) <{in_bounds = [true, true], operandSegmentSizes = array<i32: 1, 1, 2, 0>, permutation_map = #map}> : (vector<1x1xf32>, tensor<2x1xf32>, index, index) -> tensor<2x1xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%29, %7, %2, %2, %4, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 2, 0, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 2, 1>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (tensor<2x1xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<2x4xf32>>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

