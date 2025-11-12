#map = affine_map<()[s0] -> (s0 * 4)>
#map1 = affine_map<()[s0] -> (s0 * 2)>
#map2 = affine_map<(d0) -> (-d0 + 6, 4)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map5 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map6 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dot_general_nontrivial_batching_multiple_parallel_dimension"}> ({
    %0 = "arith.constant"() <{value = dense<0.000000e+00> : vector<1x4x2xf32>}> : () -> vector<1x4x2xf32>
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 6 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %5 = "arith.constant"() <{value = 0 : index}> : () -> index
    %6 = "arith.constant"() <{value = 64 : index}> : () -> index
    %7 = "hal.interface.binding.subspan"(%5) <{alignment = 32 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x6x1xf32>>
    %8 = "hal.interface.binding.subspan"(%6) <{alignment = 32 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1x2xf32>>
    %9 = "hal.interface.binding.subspan"(%5) <{alignment = 32 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x6x2xf32>>
    %10 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %11 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %12 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %13 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
    %14 = "hal.interface.workgroup.id"() <{dimension = 2 : index}> : () -> index
    %15 = "hal.interface.workgroup.count"() <{dimension = 2 : index}> : () -> index
    %16 = "affine.apply"(%12) <{map = #map}> : (index) -> index
    %17 = "affine.apply"(%13) <{map = #map}> : (index) -> index
    %18 = "affine.apply"(%10) <{map = #map1}> : (index) -> index
    %19 = "affine.apply"(%11) <{map = #map1}> : (index) -> index
    "scf.for"(%14, %3, %15) ({
    ^bb0(%arg0: index):
      "scf.for"(%16, %2, %17) ({
      ^bb0(%arg1: index):
        %20 = "affine.min"(%arg1) <{map = #map2}> : (index) -> index
        %21 = "iree_tensor_ext.dispatch.tensor.load"(%7, %arg0, %arg1, %20) <{operandSegmentSizes = array<i32: 1, 0, 2, 1, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, 0>, static_sizes = array<i64: 1, -9223372036854775808, 1>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x6x1xf32>>, index, index, index) -> tensor<1x?x1xf32>
        %22 = "tensor.extract_slice"(%21, %20) <{operandSegmentSizes = array<i32: 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, -9223372036854775808, 1>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x?x1xf32>, index) -> tensor<1x?x1xf32>
        %23 = "vector.transfer_read"(%22, %5, %5, %5, %4) <{in_bounds = [true, false, true], operandSegmentSizes = array<i32: 1, 3, 1, 0>, permutation_map = #map3}> : (tensor<1x?x1xf32>, index, index, index, f32) -> vector<1x4x1xf32>
        "scf.for"(%18, %3, %19) ({
        ^bb0(%arg2: index):
          %24 = "iree_tensor_ext.dispatch.tensor.load"(%9, %arg0, %arg1, %arg2, %20) <{operandSegmentSizes = array<i32: 1, 0, 3, 1, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, -9223372036854775808, 2>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x6x2xf32>>, index, index, index, index) -> tensor<1x?x2xf32>
          %25 = "iree_tensor_ext.dispatch.tensor.load"(%8, %arg0, %arg2) <{operandSegmentSizes = array<i32: 1, 0, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0, -9223372036854775808>, static_sizes = array<i64: 1, 1, 2>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1x2xf32>>, index, index) -> tensor<1x1x2xf32>
          %26 = "tensor.extract_slice"(%24, %20) <{operandSegmentSizes = array<i32: 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, -9223372036854775808, 2>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x?x2xf32>, index) -> tensor<1x?x2xf32>
          %27 = "vector.transfer_write"(%0, %26, %5, %5, %5) <{in_bounds = [true, false, true], operandSegmentSizes = array<i32: 1, 1, 3, 0>, permutation_map = #map3}> : (vector<1x4x2xf32>, tensor<1x?x2xf32>, index, index, index) -> tensor<1x?x2xf32>
          %28 = "tensor.extract_slice"(%27, %20) <{operandSegmentSizes = array<i32: 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, -9223372036854775808, 2>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x?x2xf32>, index) -> tensor<1x?x2xf32>
          %29 = "vector.transfer_read"(%25, %5, %5, %5, %4) <{in_bounds = [true, true, true], operandSegmentSizes = array<i32: 1, 3, 1, 0>, permutation_map = #map3}> : (tensor<1x1x2xf32>, index, index, index, f32) -> vector<1x1x2xf32>
          %30 = "vector.transfer_read"(%28, %5, %5, %5, %4) <{in_bounds = [true, false, true], operandSegmentSizes = array<i32: 1, 3, 1, 0>, permutation_map = #map3}> : (tensor<1x?x2xf32>, index, index, index, f32) -> vector<1x4x2xf32>
          %31 = "vector.contract"(%23, %29, %30) <{indexing_maps = [#map4, #map5, #map6], iterator_types = [#vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>], kind = #vector.kind<add>}> : (vector<1x4x1xf32>, vector<1x1x2xf32>, vector<1x4x2xf32>) -> vector<1x4x2xf32>
          %32 = "vector.transfer_write"(%31, %28, %5, %5, %5) <{in_bounds = [true, false, true], operandSegmentSizes = array<i32: 1, 1, 3, 0>, permutation_map = #map3}> : (vector<1x4x2xf32>, tensor<1x?x2xf32>, index, index, index) -> tensor<1x?x2xf32>
          %33 = "tensor.insert_slice"(%32, %27, %20) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, -9223372036854775808, 2>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x?x2xf32>, tensor<1x?x2xf32>, index) -> tensor<1x?x2xf32>
          %34 = "tensor.insert_slice"(%33, %24, %20) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, -9223372036854775808, 2>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x?x2xf32>, tensor<1x?x2xf32>, index) -> tensor<1x?x2xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%34, %9, %arg0, %arg1, %arg2, %20) <{operandSegmentSizes = array<i32: 1, 1, 0, 3, 1, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, -9223372036854775808, 2>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x?x2xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x6x2xf32>>, index, index, index, index) -> ()
          "scf.yield"() : () -> ()
        }) : (index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

