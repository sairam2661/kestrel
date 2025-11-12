#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "generic", cpu_features = "+fma,+avx512f", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", native_vector_size = 64 : index, target_triple = "x86_64-unknown-unknown-eabi-elf", ukernels = "all"}>
#map = affine_map<(d0, d1, d2, d3) -> (d3, d1, d2)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "fuse_inputs_reduction"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x1x1x16x16xf32>>
    %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x16x16xf32>>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0>, static_sizes = array<i64: 64, 1, 1, 16, 16>, static_strides = array<i64: 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<64x1x1x16x16xf32>>) -> tensor<64x1x1x16x16xf32>
    %5 = "tensor.empty"() : () -> tensor<64x16x16xf32>
    %6 = "linalg.fill"(%0, %5) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f32):
      "linalg.yield"(%arg2) : (f32) -> ()
    }) : (f32, tensor<64x16x16xf32>) -> tensor<64x16x16xf32>
    %7 = "linalg.unpack"(%4, %5) <{inner_dims_pos = array<i64: 1, 2>, outer_dims_perm = array<i64: 0, 1, 2>, static_inner_tiles = array<i64: 16, 16>}> : (tensor<64x1x1x16x16xf32>, tensor<64x16x16xf32>) -> tensor<64x16x16xf32>
    %8 = "linalg.generic"(%7, %6) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %9 = "arith.addf"(%arg1, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%9) : (f32) -> ()
    }) : (tensor<64x16x16xf32>, tensor<64x16x16xf32>) -> tensor<64x16x16xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%8, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 64, 16, 16>, static_strides = array<i64: 1, 1, 1>}> : (tensor<64x16x16xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x16x16xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

