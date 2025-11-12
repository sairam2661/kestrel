#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d1, d2, d3)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 5, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "matmul_multi_reduce_i4xf32xf32"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> i32
    %6 = "arith.index_castui"(%1) : (i32) -> index
    %7 = "arith.index_castui"(%2) : (i32) -> index
    %8 = "arith.index_castui"(%3) : (i32) -> index
    %9 = "arith.index_castui"(%4) : (i32) -> index
    %10 = "arith.index_castui"(%5) : (i32) -> index
    %11 = "hal.interface.binding.subspan"(%6) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<11008x32x128xi4>>
    %12 = "hal.interface.binding.subspan"(%7) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<11008x32xf32>>
    %13 = "hal.interface.binding.subspan"(%8) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<11008x32xf32>>
    %14 = "hal.interface.binding.subspan"(%9) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x32x128xf32>>
    %15 = "hal.interface.binding.subspan"(%10) <{alignment = 64 : index, binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<512x11008xf32>>
    %16 = "iree_tensor_ext.dispatch.tensor.load"(%11) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 11008, 32, 128>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<11008x32x128xi4>>) -> tensor<11008x32x128xi4>
    %17 = "iree_tensor_ext.dispatch.tensor.load"(%12) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 11008, 32>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<11008x32xf32>>) -> tensor<11008x32xf32>
    %18 = "iree_tensor_ext.dispatch.tensor.load"(%13) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 11008, 32>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<11008x32xf32>>) -> tensor<11008x32xf32>
    %19 = "iree_tensor_ext.dispatch.tensor.load"(%14) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 512, 32, 128>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<512x32x128xf32>>) -> tensor<512x32x128xf32>
    %20 = "tensor.empty"() : () -> tensor<512x11008xf32>
    %21 = "tensor.empty"() : () -> tensor<11008x32x128xf32>
    %22 = "linalg.fill"(%0, %20) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg7: f32, %arg8: f32):
      "linalg.yield"(%arg7) : (f32) -> ()
    }) : (f32, tensor<512x11008xf32>) -> tensor<512x11008xf32>
    %23 = "linalg.generic"(%16, %17, %18, %21) <{indexing_maps = [#map, #map1, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
    ^bb0(%arg3: i4, %arg4: f32, %arg5: f32, %arg6: f32):
      %27 = "arith.extui"(%arg3) : (i4) -> i32
      %28 = "arith.uitofp"(%27) : (i32) -> f32
      %29 = "arith.subf"(%28, %arg5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %30 = "arith.mulf"(%29, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%30) : (f32) -> ()
    }) : (tensor<11008x32x128xi4>, tensor<11008x32xf32>, tensor<11008x32xf32>, tensor<11008x32x128xf32>) -> tensor<11008x32x128xf32>
    %24 = "linalg.generic"(%19, %23, %22) <{indexing_maps = [#map2, #map3, #map4], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %25 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %26 = "arith.addf"(%25, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%26) : (f32) -> ()
    }) : (tensor<512x32x128xf32>, tensor<11008x32x128xf32>, tensor<512x11008xf32>) -> tensor<512x11008xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%24, %15) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 512, 11008>, static_strides = array<i64: 1, 1>}> : (tensor<512x11008xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<512x11008xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

