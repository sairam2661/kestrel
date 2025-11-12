#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "cascadelake", cpu_features = "", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 32 : index, target_triple = "x86_64-unknown-unknown-eabi-elf", ukernels = true}>
#map = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d3, d4, d6)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d2, d3, d5, d6)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d4, d5)>
#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "batch_mmt4d"}> ({
    %0 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
    %7 = "arith.extui"(%3) : (i32) -> i64
    %8 = "arith.extui"(%4) : (i32) -> i64
    %9 = "arith.shli"(%8, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %10 = "arith.ori"(%7, %9) : (i64, i64) -> i64
    %11 = "arith.index_castui"(%10) {stream.alignment = 64 : index} : (i64) -> index
    %12 = "arith.extui"(%5) : (i32) -> i64
    %13 = "arith.extui"(%6) : (i32) -> i64
    %14 = "arith.shli"(%13, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %15 = "arith.ori"(%12, %14) : (i64, i64) -> i64
    %16 = "arith.index_castui"(%15) : (i64) -> index
    %17 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x10x32x8x1xf32>>
    %18 = "hal.interface.binding.subspan"(%11) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x80x32x4x1xf32>>
    %19 = "hal.interface.binding.subspan"(%16) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x10x80x8x4xf32>>
    %20 = "iree_tensor_ext.dispatch.tensor.load"(%17) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0>, static_sizes = array<i64: 128, 10, 32, 8, 1>, static_strides = array<i64: 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<128x10x32x8x1xf32>>) -> tensor<128x10x32x8x1xf32>
    %21 = "iree_tensor_ext.dispatch.tensor.load"(%18) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0>, static_sizes = array<i64: 128, 80, 32, 4, 1>, static_strides = array<i64: 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<128x80x32x4x1xf32>>) -> tensor<128x80x32x4x1xf32>
    %22 = "tensor.empty"() : () -> tensor<128x10x80x8x4xf32>
    %23 = "linalg.fill"(%1, %22) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32):
      "linalg.yield"(%arg3) : (f32) -> ()
    }) : (f32, tensor<128x10x80x8x4xf32>) -> tensor<128x10x80x8x4xf32>
    %24 = "linalg.batch_mmt4d"(%20, %21, %23) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %25 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %26 = "arith.addf"(%arg2, %25) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%26) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<128x10x32x8x1xf32>, tensor<128x80x32x4x1xf32>, tensor<128x10x80x8x4xf32>) -> tensor<128x10x80x8x4xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%24, %19) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0>, static_sizes = array<i64: 128, 10, 80, 8, 4>, static_strides = array<i64: 1, 1, 1, 1, 1>}> : (tensor<128x10x80x8x4xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x10x80x8x4xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

