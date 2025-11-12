#executable_target_system_elf_x86_64 = #hal.executable.target<"llvm-cpu", "system-elf-x86_64", {data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-unknown-linux-gnu"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d6)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d4, d5, d6, d3)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<constants = 9, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "conv_dynamic"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> index
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 5 : index}> : () -> index
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 6 : index}> : () -> index
    %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 7 : index}> : () -> index
    %8 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 8 : index}> : () -> index
    %9 = "hal.interface.binding.subspan"(%0, %1, %2, %3) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 4>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?x?xf32>>
    %10 = "hal.interface.binding.subspan"(%4, %5, %3, %6) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 4>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?x?xf32>>
    %11 = "hal.interface.binding.subspan"(%0, %7, %8, %6) <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 4>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?x?x?xf32>>
    %12 = "iree_tensor_ext.dispatch.tensor.load"(%9, %0, %1, %2, %3, %0, %1, %2, %3) <{operandSegmentSizes = array<i32: 1, 4, 0, 4, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?x?xf32>>, index, index, index, index, index, index, index, index) -> tensor<?x?x?x?xf32>
    %13 = "iree_tensor_ext.dispatch.tensor.load"(%10, %4, %5, %3, %6, %4, %5, %3, %6) <{operandSegmentSizes = array<i32: 1, 4, 0, 4, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x?x?xf32>>, index, index, index, index, index, index, index, index) -> tensor<?x?x?x?xf32>
    %14 = "iree_tensor_ext.dispatch.tensor.load"(%11, %0, %7, %8, %6, %0, %7, %8, %6) <{operandSegmentSizes = array<i32: 1, 4, 0, 4, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?x?x?xf32>>, index, index, index, index, index, index, index, index) -> tensor<?x?x?x?xf32>
    %15 = "linalg.conv_2d_nhwc_hwcf"(%12, %13, %14) <{dilations = dense<1> : tensor<2xi64>, operandSegmentSizes = array<i32: 2, 1>, strides = dense<1> : tensor<2xi64>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %16 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %17 = "arith.addf"(%arg2, %16) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%17) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<?x?x?x?xf32>, tensor<?x?x?x?xf32>, tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%15, %11, %0, %7, %8, %6, %0, %7, %8, %6) <{operandSegmentSizes = array<i32: 1, 1, 4, 0, 4, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<?x?x?x?xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?x?x?xf32>>, index, index, index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_system_elf_x86_64} : () -> ()
}) : () -> ()

