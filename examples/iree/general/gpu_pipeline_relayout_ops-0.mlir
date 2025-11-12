#map = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "relayout_ops_with_compute_between"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x16x4x8x4x4x16x2xf32>>
    %4 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x63x8x4x4x4x2x4xf16>>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 16, 16, 4, 8, 4, 4, 16, 2>, static_strides = array<i64: 1, 1, 1, 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<16x16x4x8x4x4x16x2xf32>>) -> tensor<16x16x4x8x4x4x16x2xf32>
    %6 = "tensor.collapse_shape"(%5) <{reassociation = [[0], [1], [2, 3, 4], [5, 6, 7]]}> : (tensor<16x16x4x8x4x4x16x2xf32>) -> tensor<16x16x128x128xf32>
    %7 = "tensor.empty"() : () -> tensor<2000x2000xf32>
    %8 = "linalg.unpack"(%6, %7) <{inner_dims_pos = array<i64: 0, 1>, outer_dims_perm = array<i64: 0, 1>, static_inner_tiles = array<i64: 128, 128>}> : (tensor<16x16x128x128xf32>, tensor<2000x2000xf32>) -> tensor<2000x2000xf32>
    %9 = "tensor.empty"() : () -> tensor<2000x2000xf16>
    %10 = "linalg.generic"(%8, %9) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f16):
      %16 = "arith.truncf"(%arg2) : (f32) -> f16
      "linalg.yield"(%16) : (f16) -> ()
    }) : (tensor<2000x2000xf32>, tensor<2000x2000xf16>) -> tensor<2000x2000xf16>
    %11 = "tensor.empty"() : () -> tensor<16x63x128x32xf16>
    %12 = "linalg.pack"(%10, %11, %0) <{inner_dims_pos = array<i64: 0, 1>, operandSegmentSizes = array<i32: 1, 1, 1, 0>, outer_dims_perm = array<i64: 0, 1>, static_inner_tiles = array<i64: 128, 32>}> : (tensor<2000x2000xf16>, tensor<16x63x128x32xf16>, f16) -> tensor<16x63x128x32xf16>
    %13 = "tensor.expand_shape"(%12) <{reassociation = [[0], [1], [2, 3, 4], [5, 6, 7]], static_output_shape = array<i64: 16, 63, 4, 8, 4, 2, 4, 4>}> : (tensor<16x63x128x32xf16>) -> tensor<16x63x4x8x4x2x4x4xf16>
    %14 = "tensor.empty"() : () -> tensor<16x63x8x4x4x4x2x4xf16>
    %15 = "linalg.transpose"(%13, %14) <{permutation = array<i64: 0, 1, 3, 6, 2, 4, 5, 7>}> ({
    ^bb0(%arg0: f16, %arg1: f16):
      "linalg.yield"(%arg0) : (f16) -> ()
    }) : (tensor<16x63x4x8x4x2x4x4xf16>, tensor<16x63x8x4x4x4x2x4xf16>) -> tensor<16x63x8x4x4x4x2x4xf16>
    "iree_tensor_ext.dispatch.tensor.store"(%15, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 16, 63, 8, 4, 4, 4, 2, 4>, static_strides = array<i64: 1, 1, 1, 1, 1, 1, 1, 1>}> : (tensor<16x63x8x4x4x4x2x4xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x63x8x4x4x4x2x4xf16>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

