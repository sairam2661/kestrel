#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2, d1)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>]>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xf32>, tensor<3x5xf32>) -> (), sym_name = "producer_has_direct_write"}> ({
  ^bb0(%arg0: tensor<3x4x5xf32>, %arg1: tensor<3x5xf32>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 64 : index}> : () -> index
    %3 = "arith.constant"() <{value = 128 : index}> : () -> index
    %4 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3x5xf32>>
    %5 = "hal.interface.binding.subspan"(%3) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3x4x5xf32>>
    %6 = "tensor.empty"() : () -> tensor<3x5xf32>
    %7 = "tensor.empty"() : () -> tensor<3x4x5xf32>
    %8 = "linalg.fill"(%0, %6) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg7: f32, %arg8: f32):
      "linalg.yield"(%arg7) : (f32) -> ()
    }) : (f32, tensor<3x5xf32>) -> tensor<3x5xf32>
    %9 = "linalg.generic"(%arg0, %arg1, %7) <{indexing_maps = [#map, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg4: f32, %arg5: f32, %arg6: f32):
      %13 = "arith.subf"(%arg4, %arg5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%13) : (f32) -> ()
    }) : (tensor<3x4x5xf32>, tensor<3x5xf32>, tensor<3x4x5xf32>) -> tensor<3x4x5xf32>
    %10 = "linalg.generic"(%9, %8) <{indexing_maps = [#map2, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f32):
      %11 = "math.exp"(%arg2) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      %12 = "arith.addf"(%11, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%12) : (f32) -> ()
    }) : (tensor<3x4x5xf32>, tensor<3x5xf32>) -> tensor<3x5xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%10, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 3, 5>, static_strides = array<i64: 1, 1>}> : (tensor<3x5xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3x5xf32>>) -> ()
    "iree_tensor_ext.dispatch.tensor.store"(%9, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 3, 4, 5>, static_strides = array<i64: 1, 1, 1>}> : (tensor<3x4x5xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3x4x5xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

