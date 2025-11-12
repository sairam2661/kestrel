#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu_features = "+avx512f", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-unknown-linux-gnu"}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1)>
#map2 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "matvec_dynamic"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %5 = "arith.index_cast"(%2) : (i32) -> index
    %6 = "arith.index_cast"(%3) : (i32) -> index
    %7 = "arith.index_cast"(%4) : (i32) -> index
    %8 = "hal.interface.binding.subspan"(%0, %5, %6) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>
    %9 = "hal.interface.binding.subspan"(%0, %7) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?xf32>>
    %10 = "hal.interface.binding.subspan"(%0, %5) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>
    %11 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %12 = "arith.index_cast"(%11) : (i32) -> index
    %13 = "iree_tensor_ext.dispatch.tensor.load"(%10, %5, %12) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>, index, index) -> tensor<?xf32>
    %14 = "iree_tensor_ext.dispatch.tensor.load"(%8, %5, %6, %5, %6) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>, index, index, index, index) -> tensor<?x?xf32>
    %15 = "iree_tensor_ext.dispatch.tensor.load"(%9, %7, %7) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?xf32>>, index, index) -> tensor<?xf32>
    %16 = "linalg.fill"(%1, %13) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32):
      "linalg.yield"(%arg3) : (f32) -> ()
    }) : (f32, tensor<?xf32>) -> tensor<?xf32>
    %17 = "linalg.matvec"(%14, %15, %16) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %18 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %19 = "arith.addf"(%arg2, %18) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%19) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<?x?xf32>, tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%17, %10, %5, %5) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

