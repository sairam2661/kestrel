#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1, 0)>
#map2 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d3, d4)>
#map3 = affine_map<(d0, d1, d2, d3, d4) -> (d2, d3, d4)>
#map4 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "i4_dequant_matvec_f32"}> ({
    %0 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 4294967296 : i64}> : () -> i64
    %3 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x32x128xi4>>
    %4 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x32x1xf32>>
    %5 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x32x1xf32>>
    %6 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x1x32x128xf32>>
    %7 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x1x4096xf32>>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 4096, 32, 128>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x32x128xi4>>) -> tensor<4096x32x128xi4>
    %9 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 4096, 32, 1>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x32x1xf32>>) -> tensor<4096x32x1xf32>
    %10 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 4096, 32, 1>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x32x1xf32>>) -> tensor<4096x32x1xf32>
    %11 = "iree_tensor_ext.dispatch.tensor.load"(%6) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 1, 32, 128>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x1x32x128xf32>>) -> tensor<1x1x32x128xf32>
    %12 = "tensor.empty"() : () -> tensor<1x1x4096xf32>
    %13 = "tensor.empty"() : () -> tensor<4096x32x128xf32>
    %14 = "linalg.fill"(%1, %12) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg7: f32, %arg8: f32):
      "linalg.yield"(%arg7) : (f32) -> ()
    }) : (f32, tensor<1x1x4096xf32>) -> tensor<1x1x4096xf32>
    %15 = "linalg.generic"(%8, %9, %10, %13) <{indexing_maps = [#map, #map1, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
    ^bb0(%arg3: i4, %arg4: f32, %arg5: f32, %arg6: f32):
      %19 = "arith.extui"(%arg3) : (i4) -> i32
      %20 = "arith.uitofp"(%19) : (i32) -> f32
      %21 = "arith.subf"(%20, %arg5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %22 = "arith.mulf"(%21, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%22) : (f32) -> ()
    }) : (tensor<4096x32x128xi4>, tensor<4096x32x1xf32>, tensor<4096x32x1xf32>, tensor<4096x32x128xf32>) -> tensor<4096x32x128xf32>
    %16 = "linalg.generic"(%11, %15, %14) <{indexing_maps = [#map2, #map3, #map4], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %17 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %18 = "arith.addf"(%17, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%18) : (f32) -> ()
    }) : (tensor<1x1x32x128xf32>, tensor<4096x32x128xf32>, tensor<1x1x4096xf32>) -> tensor<1x1x4096xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%16, %7) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, 1, 4096>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x1x4096xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x1x4096xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

