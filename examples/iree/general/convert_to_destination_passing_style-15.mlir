#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "gemm_gather"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x256xf32>>
    %3 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x512xf32>>
    %4 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x512xf32>>
    %5 = "hal.interface.binding.subspan"() <{binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<128xi32>>
    %6 = "hal.interface.binding.subspan"() <{binding = 4 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x512xf32>>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 128, 256>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<128x256xf32>>) -> tensor<128x256xf32>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 256, 512>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<256x512xf32>>) -> tensor<256x512xf32>
    %9 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 2, 512>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x512xf32>>) -> tensor<2x512xf32>
    %10 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 128>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<128xi32>>) -> tensor<128xi32>
    %11 = "tensor.empty"() : () -> tensor<128x512xf32>
    %12 = "linalg.fill"(%1, %11) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg6: f32, %arg7: f32):
      "linalg.yield"(%arg6) : (f32) -> ()
    }) : (f32, tensor<128x512xf32>) -> tensor<128x512xf32>
    %13 = "linalg.matmul"(%7, %8, %12) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %19 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %20 = "arith.addf"(%arg5, %19) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%20) : (f32) -> ()
    }) : (tensor<128x256xf32>, tensor<256x512xf32>, tensor<128x512xf32>) -> tensor<128x512xf32>
    %14 = "linalg.generic"(%13, %10, %11) <{indexing_maps = [#map3, #map4, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: i32, %arg2: f32):
      %15 = "linalg.index"() <{dim = 1 : i64}> : () -> index
      %16 = "arith.index_cast"(%arg1) : (i32) -> index
      %17 = "tensor.extract"(%9, %16, %15) : (tensor<2x512xf32>, index, index) -> f32
      %18 = "arith.addf"(%arg0, %17) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%18) : (f32) -> ()
    }) : (tensor<128x512xf32>, tensor<128xi32>, tensor<128x512xf32>) -> tensor<128x512xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%14, %6) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 128, 512>, static_strides = array<i64: 1, 1>}> : (tensor<128x512xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x512xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

