#map = affine_map<(d0, d1, d2, d3, d4) -> (d0, d2, d4)>
#map1 = affine_map<(d0, d1, d2, d3, d4) -> (d1, d3, d4)>
#map2 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "expanded_matmul_transpose_b"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x64x2048xf16>>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<10x64x2048xf16>>
    %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x10x64x64xf16>>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 2, 64, 2048>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x64x2048xf16>>) -> tensor<2x64x2048xf16>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 10, 64, 2048>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<10x64x2048xf16>>) -> tensor<10x64x2048xf16>
    %7 = "tensor.empty"() : () -> tensor<2x10x64x64xf16>
    %8 = "linalg.fill"(%1, %7) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f16, %arg4: f16):
      "linalg.yield"(%arg3) : (f16) -> ()
    }) : (f16, tensor<2x10x64x64xf16>) -> tensor<2x10x64x64xf16>
    %9 = "linalg.generic"(%5, %6, %8) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f16, %arg1: f16, %arg2: f16):
      %10 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      %11 = "arith.addf"(%10, %arg2) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      "linalg.yield"(%11) : (f16) -> ()
    }) : (tensor<2x64x2048xf16>, tensor<10x64x2048xf16>, tensor<2x10x64x64xf16>) -> tensor<2x10x64x64xf16>
    "iree_tensor_ext.dispatch.tensor.store"(%9, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 10, 64, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<2x10x64x64xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x10x64x64xf16>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

