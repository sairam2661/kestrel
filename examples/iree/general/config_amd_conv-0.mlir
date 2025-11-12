#map = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d6)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d4, d5, d6, d3)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "nhwc_conv_pointwise_2x64x64x320"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x66x66x320xf16>>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x3x320x320xf16>>
    %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x64x64x320xf16>>
    %5 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x64x64x320xf16>>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 66, 66, 320>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x66x66x320xf16>>) -> tensor<2x66x66x320xf16>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 3, 3, 320, 320>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<3x3x320x320xf16>>) -> tensor<3x3x320x320xf16>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 64, 64, 320>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x64x64x320xf16>>) -> tensor<2x64x64x320xf16>
    %9 = "tensor.empty"() : () -> tensor<2x64x64x320xf16>
    %10 = "linalg.fill"(%1, %9) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg6: f16, %arg7: f16):
      "linalg.yield"(%arg6) : (f16) -> ()
    }) : (f16, tensor<2x64x64x320xf16>) -> tensor<2x64x64x320xf16>
    %11 = "linalg.conv_2d_nhwc_hwcf"(%6, %7, %10) <{dilations = dense<1> : tensor<2xi64>, operandSegmentSizes = array<i32: 2, 1>, strides = dense<1> : tensor<2xi64>}> ({
    ^bb0(%arg3: f16, %arg4: f16, %arg5: f16):
      %14 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      %15 = "arith.addf"(%arg5, %14) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      "linalg.yield"(%15) : (f16) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<2x66x66x320xf16>, tensor<3x3x320x320xf16>, tensor<2x64x64x320xf16>) -> tensor<2x64x64x320xf16>
    %12 = "linalg.generic"(%11, %8, %9) <{indexing_maps = [#map3, #map3, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f16, %arg1: f16, %arg2: f16):
      %13 = "arith.divf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      "linalg.yield"(%13) : (f16) -> ()
    }) : (tensor<2x64x64x320xf16>, tensor<2x64x64x320xf16>, tensor<2x64x64x320xf16>) -> tensor<2x64x64x320xf16>
    "iree_tensor_ext.dispatch.tensor.store"(%12, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 64, 64, 320>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<2x64x64x320xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x64x64x320xf16>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

