#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "batch_matmul_f16_1x4096x4096x512"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x4096x512xf16>>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x512x4096xf16>>
    %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x4096x4096xf32>>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, 4096, 512>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x4096x512xf16>>) -> tensor<1x4096x512xf16>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, 512, 4096>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x512x4096xf16>>) -> tensor<1x512x4096xf16>
    %7 = "tensor.empty"() : () -> tensor<1x4096x4096xf32>
    %8 = "tensor.empty"() : () -> tensor<1x4096x4096xf16>
    %9 = "linalg.fill"(%1, %8) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: f16, %arg6: f16):
      "linalg.yield"(%arg5) : (f16) -> ()
    }) : (f16, tensor<1x4096x4096xf16>) -> tensor<1x4096x4096xf16>
    %10 = "linalg.batch_matmul"(%5, %6, %9) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg2: f16, %arg3: f16, %arg4: f16):
      %13 = "arith.mulf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      %14 = "arith.addf"(%arg4, %13) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
      "linalg.yield"(%14) : (f16) -> ()
    }) : (tensor<1x4096x512xf16>, tensor<1x512x4096xf16>, tensor<1x4096x4096xf16>) -> tensor<1x4096x4096xf16>
    %11 = "linalg.generic"(%10, %7) <{indexing_maps = [#map3, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f16, %arg1: f32):
      %12 = "arith.extf"(%arg0) : (f16) -> f32
      "linalg.yield"(%12) : (f32) -> ()
    }) : (tensor<1x4096x4096xf16>, tensor<1x4096x4096xf32>) -> tensor<1x4096x4096xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%11, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, 4096, 4096>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x4096x4096xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x4096x4096xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

