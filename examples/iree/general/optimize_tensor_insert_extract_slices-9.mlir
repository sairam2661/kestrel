#map = affine_map<()[s0] -> (s0 * 64)>
#map1 = affine_map<()[s0] -> (s0 * 128)>
#map2 = affine_map<()[s0] -> (s0 * -64 + 968, 64)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map5 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map6 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x?x1280xf16>, tensor<1x1280x128xf16>) -> (), sym_name = "batch_matmul_with_padding_strategy"}> ({
  ^bb0(%arg0: tensor<1x?x1280xf16>, %arg1: tensor<1x1280x128xf16>):
    %0 = "arith.constant"() <{value = dense<0.000000e+00> : vector<1x64x128xf16>}> : () -> vector<1x64x128xf16>
    %1 = "arith.constant"() <{value = 20 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %4 = "arith.constant"() <{value = 0 : index}> : () -> index
    %5 = "hal.interface.binding.subspan"(%4) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x968x1280xf16>>
    %6 = "hal.interface.workgroup.id"() <{dimension = 2 : index}> : () -> index
    %7 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %8 = "affine.apply"(%7) <{map = #map}> : (index) -> index
    %9 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %10 = "affine.apply"(%9) <{map = #map1}> : (index) -> index
    %11 = "affine.min"(%7) <{map = #map2}> : (index) -> index
    %12 = "tensor.empty"() : () -> tensor<1x64x128xf16>
    %13 = "vector.transfer_write"(%0, %12, %4, %4, %4) <{in_bounds = [true, true, true], operandSegmentSizes = array<i32: 1, 1, 3, 0>, permutation_map = #map3}> : (vector<1x64x128xf16>, tensor<1x64x128xf16>, index, index, index) -> tensor<1x64x128xf16>
    %14 = "scf.for"(%4, %1, %2, %13) ({
    ^bb0(%arg2: index, %arg3: tensor<1x64x128xf16>):
      %16 = "affine.delinearize_index"(%arg2) <{static_basis = array<i64: 20>}> : (index) -> index
      %17 = "affine.apply"(%16) <{map = #map}> : (index) -> index
      %18 = "tensor.extract_slice"(%arg1, %17) <{operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_offsets = array<i64: 0, -9223372036854775808, 0>, static_sizes = array<i64: 1, 64, 128>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x1280x128xf16>, index) -> tensor<1x64x128xf16>
      %19 = "tensor.extract_slice"(%arg0, %17, %11) <{operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_offsets = array<i64: 0, 0, -9223372036854775808>, static_sizes = array<i64: 1, -9223372036854775808, 64>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x?x1280xf16>, index, index) -> tensor<1x?x64xf16>
      %20 = "vector.transfer_read"(%19, %4, %4, %4, %3) <{in_bounds = [true, false, true], operandSegmentSizes = array<i32: 1, 3, 1, 0>, permutation_map = #map3}> : (tensor<1x?x64xf16>, index, index, index, f16) -> vector<1x64x64xf16>
      %21 = "vector.transfer_read"(%18, %4, %4, %4, %3) <{in_bounds = [true, true, true], operandSegmentSizes = array<i32: 1, 3, 1, 0>, permutation_map = #map3}> : (tensor<1x64x128xf16>, index, index, index, f16) -> vector<1x64x128xf16>
      %22 = "vector.transfer_read"(%arg3, %4, %4, %4, %3) <{in_bounds = [true, true, true], operandSegmentSizes = array<i32: 1, 3, 1, 0>, permutation_map = #map3}> : (tensor<1x64x128xf16>, index, index, index, f16) -> vector<1x64x128xf16>
      %23 = "vector.contract"(%20, %21, %22) <{indexing_maps = [#map4, #map5, #map6], iterator_types = [#vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>], kind = #vector.kind<add>}> : (vector<1x64x64xf16>, vector<1x64x128xf16>, vector<1x64x128xf16>) -> vector<1x64x128xf16>
      %24 = "vector.transfer_write"(%23, %arg3, %4, %4, %4) <{in_bounds = [true, true, true], operandSegmentSizes = array<i32: 1, 1, 3, 0>, permutation_map = #map3}> : (vector<1x64x128xf16>, tensor<1x64x128xf16>, index, index, index) -> tensor<1x64x128xf16>
      "scf.yield"(%24) : (tensor<1x64x128xf16>) -> ()
    }) : (index, index, index, tensor<1x64x128xf16>) -> tensor<1x64x128xf16>
    %15 = "tensor.extract_slice"(%14, %11) <{operandSegmentSizes = array<i32: 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, -9223372036854775808, 128>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x64x128xf16>, index) -> tensor<1x?x128xf16>
    "iree_tensor_ext.dispatch.tensor.store"(%15, %5, %6, %8, %10, %11) <{operandSegmentSizes = array<i32: 1, 1, 0, 3, 1, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, -9223372036854775808, 128>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x?x128xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x968x1280xf16>>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

