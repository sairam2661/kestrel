#map = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 * 2 + d4, d2 * 2 + d5, d6)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d4, d5, d6, d3)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "conv_16x16x16"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 16 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x33x33x3xf32>>
    %4 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x3x3x16xf32>>
    %5 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x16x16x16xf32>>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 33, 33, 3>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x33x33x3xf32>>) -> tensor<1x33x33x3xf32>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 3, 3, 3, 16>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<3x3x3x16xf32>>) -> tensor<3x3x3x16xf32>
    %8 = "tensor.empty"() : () -> tensor<1x16x16x16xf32>
    %9 = "linalg.fill"(%2, %8) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32):
      "linalg.yield"(%arg3) : (f32) -> ()
    }) : (f32, tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    %10 = "linalg.conv_2d_nhwc_hwcf"(%6, %7, %9) <{dilations = dense<1> : tensor<2xi64>, operandSegmentSizes = array<i32: 2, 1>, strides = dense<2> : tensor<2xi64>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %11 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %12 = "arith.addf"(%arg2, %11) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%12) : (f32) -> ()
    }) {__internal_linalg_transform__ = "workgroup", linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<1x33x33x3xf32>, tensor<3x3x3x16xf32>, tensor<1x16x16x16xf32>) -> tensor<1x16x16x16xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%10, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 16, 16, 16>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x16x16x16xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x16x16x16xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

