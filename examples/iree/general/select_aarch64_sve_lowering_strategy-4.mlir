#executable_target_system_elf_arm_64 = #hal.executable.target<"llvm-cpu", "system-elf-arm_64", {cpu = "", cpu_features = "+v9a,+sve", data_layout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128", link_embedded = false, native_vector_size = 16 : index, target_triple = "aarch64-none-linux-android34"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d0)>
#map5 = affine_map<(d0, d1) -> (d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 5, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "matmul_with_fill"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
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
    %11 = "hal.interface.binding.subspan"(%6) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x256xi8>>
    %12 = "hal.interface.binding.subspan"(%8) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x256xi8>>
    %13 = "hal.interface.binding.subspan"(%7) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024xf32>>
    %14 = "hal.interface.binding.subspan"(%9) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256xf32>>
    %15 = "hal.interface.binding.subspan"(%10) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1024x256xf32>>
    %16 = "iree_tensor_ext.dispatch.tensor.load"(%11) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1024, 256>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x256xi8>>) -> tensor<1024x256xi8>
    %17 = "iree_tensor_ext.dispatch.tensor.load"(%12) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 256, 256>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<256x256xi8>>) -> tensor<256x256xi8>
    %18 = "iree_tensor_ext.dispatch.tensor.load"(%13) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 1024>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1024xf32>>) -> tensor<1024xf32>
    %19 = "iree_tensor_ext.dispatch.tensor.load"(%14) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 256>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<256xf32>>) -> tensor<256xf32>
    %20 = "tensor.empty"() : () -> tensor<1024x256xf32>
    %21 = "tensor.empty"() : () -> tensor<1024x256xi32>
    %22 = "linalg.fill"(%0, %21) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg7: i32, %arg8: i32):
      "linalg.yield"(%arg7) : (i32) -> ()
    }) : (i32, tensor<1024x256xi32>) -> tensor<1024x256xi32>
    %23 = "linalg.matmul"(%16, %17, %22) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg4: i8, %arg5: i8, %arg6: i32):
      %28 = "arith.extsi"(%arg4) : (i8) -> i32
      %29 = "arith.extsi"(%arg5) : (i8) -> i32
      %30 = "arith.muli"(%28, %29) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %31 = "arith.addi"(%arg6, %30) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%31) : (i32) -> ()
    }) : (tensor<1024x256xi8>, tensor<256x256xi8>, tensor<1024x256xi32>) -> tensor<1024x256xi32>
    %24 = "linalg.generic"(%23, %18, %19, %20) <{indexing_maps = [#map3, #map4, #map5, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
    ^bb0(%arg0: i32, %arg1: f32, %arg2: f32, %arg3: f32):
      %25 = "arith.sitofp"(%arg0) : (i32) -> f32
      %26 = "arith.mulf"(%25, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %27 = "arith.mulf"(%26, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%27) : (f32) -> ()
    }) : (tensor<1024x256xi32>, tensor<1024xf32>, tensor<256xf32>, tensor<1024x256xf32>) -> tensor<1024x256xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%24, %15) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1024, 256>, static_strides = array<i64: 1, 1>}> : (tensor<1024x256xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1024x256xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_system_elf_arm_64} : () -> ()
}) : () -> ()

