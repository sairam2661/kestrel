#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "multi_result_dispatches"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<120x240xf32>>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<240x360xf32>>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<120xf32>>
    %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<120x360xf32>>
    %5 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 4 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<120x360xf32>>
    %6 = "tensor.empty"() : () -> tensor<120x360xf32>
    %7 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %8 = "linalg.fill"(%7, %6) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg6: f32, %arg7: f32):
      "linalg.yield"(%arg6) : (f32) -> ()
    }) : (f32, tensor<120x360xf32>) -> tensor<120x360xf32>
    %9 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 120, 240>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<120x240xf32>>) -> tensor<120x240xf32>
    %10 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 240, 360>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<240x360xf32>>) -> tensor<240x360xf32>
    %11 = "linalg.matmul"(%9, %10, %8) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %15 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %16 = "arith.addf"(%arg5, %15) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%16) : (f32) -> ()
    }) : (tensor<120x240xf32>, tensor<240x360xf32>, tensor<120x360xf32>) -> tensor<120x360xf32>
    %12 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 120>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<120xf32>>) -> tensor<120xf32>
    %13 = "linalg.generic"(%11, %12, %6) <{indexing_maps = [#map3, #map4, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %14 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%14) : (f32) -> ()
    }) : (tensor<120x360xf32>, tensor<120xf32>, tensor<120x360xf32>) -> tensor<120x360xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%11, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 120, 360>, static_strides = array<i64: 1, 1>}> : (tensor<120x360xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<120x360xf32>>) -> ()
    "iree_tensor_ext.dispatch.tensor.store"(%13, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 120, 360>, static_strides = array<i64: 1, 1>}> : (tensor<120x360xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<120x360xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

