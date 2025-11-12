#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1 * 2 + d4, d2 * 3 + d5, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "pooling_nhwc_sum"}> ({
    %0 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<f32>>
    %1 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x4x6x1xf32>>
    %2 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x2x2x1xf32>>
    %3 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 2, 2, 1>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x2x2x1xf32>>) -> tensor<1x2x2x1xf32>
    %4 = "bufferization.alloc_tensor"() <{operandSegmentSizes = array<i32: 0, 0, 0>}> : () -> tensor<2x3xf32>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%0) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64>, static_sizes = array<i64>, static_strides = array<i64>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<f32>>) -> tensor<f32>
    %6 = "tensor.extract"(%5) : (tensor<f32>) -> f32
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 4, 6, 1>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x4x6x1xf32>>) -> tensor<1x4x6x1xf32>
    %8 = "linalg.fill"(%6, %3) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32):
      "linalg.yield"(%arg3) : (f32) -> ()
    }) : (f32, tensor<1x2x2x1xf32>) -> tensor<1x2x2x1xf32>
    %9 = "linalg.pooling_nhwc_sum"(%7, %4, %8) <{dilations = dense<1> : vector<2xi64>, operandSegmentSizes = array<i32: 2, 1>, strides = dense<[2, 3]> : vector<2xi64>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %10 = "arith.addf"(%arg2, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%10) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<1x4x6x1xf32>, tensor<2x3xf32>, tensor<1x2x2x1xf32>) -> tensor<1x2x2x1xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%9, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 2, 2, 1>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x2x2x1xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x2x2x1xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

