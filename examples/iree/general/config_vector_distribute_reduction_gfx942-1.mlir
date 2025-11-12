#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "reduction_with_no_consumer"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 4.096000e+04 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 9.99999974E-6 : f32}> : () -> f32
    %4 = "arith.constant"() <{value = 69524992 : index}> : () -> index
    %5 = "arith.constant"() <{value = 74767872 : index}> : () -> index
    %6 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32x10x4096xf16>>
    %7 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x32xf32>>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%6) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 32, 10, 4096>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32x10x4096xf16>>) -> tensor<2x32x10x4096xf16>
    %9 = "tensor.empty"() : () -> tensor<2x32x10x4096xf32>
    %10 = "tensor.empty"() : () -> tensor<2x32xf32>
    %11 = "linalg.generic"(%8, %9) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg4: f16, %arg5: f32):
      %15 = "arith.extf"(%arg4) : (f16) -> f32
      "linalg.yield"(%15) : (f32) -> ()
    }) : (tensor<2x32x10x4096xf16>, tensor<2x32x10x4096xf32>) -> tensor<2x32x10x4096xf32>
    %12 = "linalg.fill"(%1, %10) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f32):
      "linalg.yield"(%arg2) : (f32) -> ()
    }) : (f32, tensor<2x32xf32>) -> tensor<2x32xf32>
    %13 = "linalg.generic"(%11, %12) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %14 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%14) : (f32) -> ()
    }) : (tensor<2x32x10x4096xf32>, tensor<2x32xf32>) -> tensor<2x32xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%13, %7) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 2, 32>, static_strides = array<i64: 1, 1>}> : (tensor<2x32xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x32xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

