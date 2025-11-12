#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "generic", cpu_features = "+avx2", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 64 : index, target_triple = "x86_64-none-elf", ukernels = false}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#map2 = affine_map<(d0, d1) -> (d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "reduction_broadcast_pack"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = -0.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 1.024000e+03 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 9.99999996E-13 : f32}> : () -> f32
    %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<384x1024xf32>>
    %5 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<384xf32>>
    %6 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024xf32>>
    %7 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 3 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024xf32>>
    %8 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 4 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<24x1024x16x1xf32>>
    %9 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 384, 1024>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<384x1024xf32>>) -> tensor<384x1024xf32>
    %10 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 384>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<384xf32>>) -> tensor<384xf32>
    %11 = "iree_tensor_ext.dispatch.tensor.load"(%6) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 1024>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1024xf32>>) -> tensor<1024xf32>
    %12 = "iree_tensor_ext.dispatch.tensor.load"(%7) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 1024>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1024xf32>>) -> tensor<1024xf32>
    %13 = "tensor.empty"() : () -> tensor<24x1024x16x1xf32>
    %14 = "tensor.empty"() : () -> tensor<384x1024xf32>
    %15 = "tensor.empty"() : () -> tensor<384xf32>
    %16 = "linalg.fill"(%1, %15) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg9: f32, %arg10: f32):
      "linalg.yield"(%arg9) : (f32) -> ()
    }) : (f32, tensor<384xf32>) -> tensor<384xf32>
    %17 = "linalg.generic"(%9, %10, %16) <{indexing_maps = [#map, #map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg6: f32, %arg7: f32, %arg8: f32):
      %28 = "arith.subf"(%arg6, %arg7) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %29 = "arith.mulf"(%28, %28) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %30 = "arith.addf"(%arg8, %29) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%30) : (f32) -> ()
    }) : (tensor<384x1024xf32>, tensor<384xf32>, tensor<384xf32>) -> tensor<384xf32>
    %18 = "linalg.generic"(%9, %17, %11, %12, %10, %14) <{indexing_maps = [#map, #map1, #map2, #map2, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 5, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32):
      %20 = "arith.divf"(%arg1, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %21 = "arith.addf"(%20, %3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %22 = "math.rsqrt"(%21) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      %23 = "arith.mulf"(%22, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %24 = "arith.mulf"(%arg4, %23) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %25 = "arith.subf"(%arg3, %24) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %26 = "arith.mulf"(%arg0, %23) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %27 = "arith.addf"(%26, %25) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%27) : (f32) -> ()
    }) : (tensor<384x1024xf32>, tensor<384xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<384xf32>, tensor<384x1024xf32>) -> tensor<384x1024xf32>
    %19 = "linalg.pack"(%18, %13) <{inner_dims_pos = array<i64: 0, 1>, operandSegmentSizes = array<i32: 1, 1, 0, 0>, static_inner_tiles = array<i64: 16, 1>}> : (tensor<384x1024xf32>, tensor<24x1024x16x1xf32>) -> tensor<24x1024x16x1xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%19, %8) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 24, 1024, 16, 1>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<24x1024x16x1xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<24x1024x16x1xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

