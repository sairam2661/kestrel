#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "reduce_broadcast_generic"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<10x1024xf32>>
    %3 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<10xf32>>
    %4 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<10x1024xf32>>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 10, 1024>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<10x1024xf32>>) -> tensor<10x1024xf32>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 10>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<10xf32>>) -> tensor<10xf32>
    %7 = "tensor.empty"() : () -> tensor<10x1024xf32>
    %8 = "tensor.empty"() : () -> tensor<10xf32>
    %9 = "linalg.fill"(%1, %8) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg7: f32, %arg8: f32):
      "linalg.yield"(%arg7) : (f32) -> ()
    }) : (f32, tensor<10xf32>) -> tensor<10xf32>
    %10:2 = "linalg.generic"(%5, %6, %7, %9) <{indexing_maps = [#map, #map1, #map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 2>}> ({
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %13 = "arith.subf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %14 = "math.exp"(%13) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      %15 = "arith.addf"(%14, %arg6) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%14, %15) : (f32, f32) -> ()
    }) : (tensor<10x1024xf32>, tensor<10xf32>, tensor<10x1024xf32>, tensor<10xf32>) -> (tensor<10x1024xf32>, tensor<10xf32>)
    %11 = "linalg.generic"(%10#0, %10#1, %7) <{indexing_maps = [#map, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %12 = "arith.divf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%12) : (f32) -> ()
    }) : (tensor<10x1024xf32>, tensor<10xf32>, tensor<10x1024xf32>) -> tensor<10x1024xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%11, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 10, 1024>, static_strides = array<i64: 1, 1>}> : (tensor<10x1024xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<10x1024xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

