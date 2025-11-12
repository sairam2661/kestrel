#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu_features = "+avx512f", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 64 : index, target_triple = "x86_64-none-elf"}>
#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<constants = 6, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "batch_matmul_dynamic"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> i32
    %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 5 : index}> : () -> i32
    %8 = "arith.index_cast"(%2) : (i32) -> index
    %9 = "arith.index_cast"(%3) : (i32) -> index
    %10 = "arith.index_cast"(%4) : (i32) -> index
    %11 = "arith.index_cast"(%5) : (i32) -> index
    %12 = "arith.index_cast"(%6) : (i32) -> index
    %13 = "arith.index_cast"(%7) : (i32) -> index
    %14 = "hal.interface.binding.subspan"(%1, %8, %9, %11) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 3>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xf32>>
    %15 = "hal.interface.binding.subspan"(%1, %12, %13, %10) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 3>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xf32>>
    %16 = "hal.interface.binding.subspan"(%1, %8, %9, %10) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 3>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?x?xf32>>
    %17 = "iree_tensor_ext.dispatch.tensor.load"(%14, %8, %9, %11, %8, %9, %11) <{operandSegmentSizes = array<i32: 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xf32>>, index, index, index, index, index, index) -> tensor<?x?x?xf32>
    %18 = "iree_tensor_ext.dispatch.tensor.load"(%15, %12, %13, %10, %12, %13, %10) <{operandSegmentSizes = array<i32: 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?xf32>>, index, index, index, index, index, index) -> tensor<?x?x?xf32>
    %19 = "tensor.empty"(%8, %9, %10) : (index, index, index) -> tensor<?x?x?xf32>
    %20 = "linalg.fill"(%0, %19) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32):
      "linalg.yield"(%arg3) : (f32) -> ()
    }) : (f32, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %21 = "linalg.batch_matmul"(%17, %18, %20) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %22 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %23 = "arith.addf"(%arg2, %22) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%23) : (f32) -> ()
    }) : (tensor<?x?x?xf32>, tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%21, %16, %8, %9, %10, %8, %9, %10) <{operandSegmentSizes = array<i32: 1, 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1>}> : (tensor<?x?x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?x?xf32>>, index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

