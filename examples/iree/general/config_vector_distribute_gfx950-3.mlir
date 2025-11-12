#map = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7, d8) -> (d0, d5, d2 + d6, d3 + d7, d8)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7, d8) -> (d1, d5, d6, d7, d4, d8)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7, d8) -> (d0, d1, d2, d3, d4)>
#map3 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "conv_nchwc"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x20x34x34x64xf16>>
    %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x20x3x3x160x64xf16>>
    %4 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x8x32x32x160xf16>>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0>, static_sizes = array<i64: 2, 20, 34, 34, 64>, static_strides = array<i64: 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x20x34x34x64xf16>>) -> tensor<2x20x34x34x64xf16>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 8, 20, 3, 3, 160, 64>, static_strides = array<i64: 1, 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<8x20x3x3x160x64xf16>>) -> tensor<8x20x3x3x160x64xf16>
    %7 = "tensor.empty"() : () -> tensor<2x8x32x32x160xf32>
    %8 = "linalg.fill"(%0, %7) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: f32, %arg6: f32):
      "linalg.yield"(%arg5) : (f32) -> ()
    }) : (f32, tensor<2x8x32x32x160xf32>) -> tensor<2x8x32x32x160xf32>
    %9 = "linalg.generic"(%5, %6, %8) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg2: f16, %arg3: f16, %arg4: f32):
      %13 = "arith.extf"(%arg2) : (f16) -> f32
      %14 = "arith.extf"(%arg3) : (f16) -> f32
      %15 = "arith.mulf"(%13, %14) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %16 = "arith.addf"(%arg4, %15) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%16) : (f32) -> ()
    }) {lowering_config = #iree_gpu.lowering_config<{reduction = [0, 0, 0, 0, 0, 1, 1, 1, 32], workgroup = [1, 1, 1, 32, 32, 0, 0, 0, 0]}>} : (tensor<2x20x34x34x64xf16>, tensor<8x20x3x3x160x64xf16>, tensor<2x8x32x32x160xf32>) -> tensor<2x8x32x32x160xf32>
    %10 = "tensor.empty"() : () -> tensor<2x8x32x32x160xf16>
    %11 = "linalg.generic"(%9, %10) <{indexing_maps = [#map3, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f16):
      %12 = "arith.truncf"(%arg0) : (f32) -> f16
      "linalg.yield"(%12) : (f16) -> ()
    }) : (tensor<2x8x32x32x160xf32>, tensor<2x8x32x32x160xf16>) -> tensor<2x8x32x32x160xf16>
    "iree_tensor_ext.dispatch.tensor.store"(%11, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0>, static_sizes = array<i64: 2, 8, 32, 32, 160>, static_strides = array<i64: 1, 1, 1, 1, 1>}> : (tensor<2x8x32x32x160xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x8x32x32x160xf16>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

