#map = affine_map<(d0, d1, d2, d3, d4) -> (d2, d0 * 2 + d3, d1 * 3 + d4)>
#map1 = affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d4)>
#map2 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "reduce_window_max_4x6xf32"}> ({
    %0 = "arith.constant"() <{value = dense<0xFF800000> : tensor<2x2xf32>}> : () -> tensor<2x2xf32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x4x6xf32>>
    %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x2xf32>>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 2, 4, 6>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x4x6xf32>>) -> tensor<2x4x6xf32>
    %5 = "tensor.empty"() : () -> tensor<2x2x3xf32>
    %6 = "linalg.generic"(%4, %5, %0) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %7 = "arith.maximumf"(%arg0, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%7) : (f32) -> ()
    }) : (tensor<2x4x6xf32>, tensor<2x2x3xf32>, tensor<2x2xf32>) -> tensor<2x2xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 2, 2>, static_strides = array<i64: 1, 1>}> : (tensor<2x2xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x2xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

