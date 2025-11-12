#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#map2 = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_multiple_reduction"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 1.638400e+05 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 9.99999974E-6 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 0 : index}> : () -> index
    %4 = "hal.interface.binding.subspan"(%3) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> {iree_gpu.use_rocdl_buffer_instructions} : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32x10x16384xf16>>
    %5 = "hal.interface.binding.subspan"(%3) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> {iree_gpu.use_rocdl_buffer_instructions} : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32x10x16384xf16>>
    %6 = "hal.interface.binding.subspan"(%3) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> {iree_gpu.use_rocdl_buffer_instructions} : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x32x10x16384xf32>>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 32, 10, 16384>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32x10x16384xf16>>) -> tensor<2x32x10x16384xf16>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 32, 10, 16384>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32x10x16384xf16>>) -> tensor<2x32x10x16384xf16>
    %9 = "tensor.empty"() : () -> tensor<2x32x10x16384xf32>
    %10 = "tensor.empty"() : () -> tensor<2x32xf32>
    %11 = "linalg.generic"(%7, %9) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg13: f16, %arg14: f32):
      %28 = "arith.extf"(%arg13) : (f16) -> f32
      "linalg.yield"(%28) : (f32) -> ()
    }) : (tensor<2x32x10x16384xf16>, tensor<2x32x10x16384xf32>) -> tensor<2x32x10x16384xf32>
    %12 = "linalg.fill"(%0, %10) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg11: f32, %arg12: f32):
      "linalg.yield"(%arg11) : (f32) -> ()
    }) : (f32, tensor<2x32xf32>) -> tensor<2x32xf32>
    %13 = "linalg.generic"(%11, %12) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg9: f32, %arg10: f32):
      %27 = "arith.addf"(%arg9, %arg10) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%27) : (f32) -> ()
    }) : (tensor<2x32x10x16384xf32>, tensor<2x32xf32>) -> tensor<2x32xf32>
    %14 = "linalg.generic"(%13, %10) <{indexing_maps = [#map2, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg7: f32, %arg8: f32):
      %26 = "arith.divf"(%arg7, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%26) : (f32) -> ()
    }) : (tensor<2x32xf32>, tensor<2x32xf32>) -> tensor<2x32xf32>
    %15 = "linalg.generic"(%11, %14, %12) <{indexing_maps = [#map, #map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg4: f32, %arg5: f32, %arg6: f32):
      %23 = "arith.subf"(%arg4, %arg5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %24 = "arith.mulf"(%23, %23) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %25 = "arith.addf"(%24, %arg6) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%25) : (f32) -> ()
    }) : (tensor<2x32x10x16384xf32>, tensor<2x32xf32>, tensor<2x32xf32>) -> tensor<2x32xf32>
    %16 = "linalg.generic"(%8, %14, %15, %9) <{indexing_maps = [#map, #map1, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
    ^bb0(%arg0: f16, %arg1: f32, %arg2: f32, %arg3: f32):
      %17 = "arith.divf"(%arg2, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %18 = "arith.addf"(%17, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %19 = "math.rsqrt"(%18) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      %20 = "arith.extf"(%arg0) : (f16) -> f32
      %21 = "arith.subf"(%20, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %22 = "arith.mulf"(%21, %19) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%22) : (f32) -> ()
    }) : (tensor<2x32x10x16384xf16>, tensor<2x32xf32>, tensor<2x32xf32>, tensor<2x32x10x16384xf32>) -> tensor<2x32x10x16384xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%16, %6) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 32, 10, 16384>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<2x32x10x16384xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x32x10x16384xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

