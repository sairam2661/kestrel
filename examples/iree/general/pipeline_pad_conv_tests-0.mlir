#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "generic", cpu_features = "+avx512f", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 32 : index, target_triple = "x86_64-none-elf"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<constants = 5, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "pad_conv_2d_nchw_fchw_1x320x64x64x320x3x3"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 5243520 : index}> : () -> index
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
    %8 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> i32
    %9 = "arith.index_castui"(%4) {stream.alignment = 128 : index, stream.values = [10486400 : index, 15729280 : index]} : (i32) -> index
    %10 = "arith.index_castui"(%5) {stream.alignment = 256 : index, stream.values = [1273222400 : index, 1280618240 : index]} : (i32) -> index
    %11 = "arith.index_castui"(%6) {stream.alignment = 256 : index, stream.values = [10507520 : index, 21488640 : index]} : (i32) -> index
    %12 = "arith.index_castui"(%7) {stream.alignment = 256 : index, stream.values = [10508800 : index, 21489920 : index]} : (i32) -> index
    %13 = "arith.index_castui"(%8) {stream.alignment = 128 : index, stream.values = [10486400 : index, 10487680 : index]} : (i32) -> index
    %14 = "hal.interface.binding.subspan"(%3) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x320x64x64xf32>>
    %15 = "hal.interface.binding.subspan"(%10) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<320x320x3x3xf32>>
    %16 = "hal.interface.binding.subspan"(%11) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x320xf32>>
    %17 = "hal.interface.binding.subspan"(%12) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x320xf32>>
    %18 = "hal.interface.binding.subspan"(%9) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x320xf32>>
    %19 = "hal.interface.binding.subspan"(%13) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x320x64x64xf32>>
    %20 = "iree_tensor_ext.dispatch.tensor.load"(%14) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 320, 64, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x320x64x64xf32>>) -> tensor<1x320x64x64xf32>
    %21 = "iree_tensor_ext.dispatch.tensor.load"(%15) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 320, 320, 3, 3>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<320x320x3x3xf32>>) -> tensor<320x320x3x3xf32>
    %22 = "iree_tensor_ext.dispatch.tensor.load"(%16) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1, 320>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x320xf32>>) -> tensor<1x320xf32>
    %23 = "iree_tensor_ext.dispatch.tensor.load"(%17) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1, 320>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x320xf32>>) -> tensor<1x320xf32>
    %24 = "iree_tensor_ext.dispatch.tensor.load"(%18) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1, 320>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x320xf32>>) -> tensor<1x320xf32>
    %25 = "tensor.empty"() : () -> tensor<1x320x64x64xf32>
    %26 = "linalg.fill"(%0, %25) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg7: f32, %arg8: f32):
      "linalg.yield"(%arg7) : (f32) -> ()
    }) : (f32, tensor<1x320x64x64xf32>) -> tensor<1x320x64x64xf32>
    %27 = "tensor.pad"(%20) <{operandSegmentSizes = array<i32: 1, 0, 0>, static_high = array<i64: 0, 0, 1, 1>, static_low = array<i64: 0, 0, 1, 1>}> ({
    ^bb0(%arg3: index, %arg4: index, %arg5: index, %arg6: index):
      "tensor.yield"(%0) : (f32) -> ()
    }) : (tensor<1x320x64x64xf32>) -> tensor<1x320x66x66xf32>
    %28 = "linalg.conv_2d_nchw_fchw"(%27, %21, %26) <{dilations = dense<1> : vector<2xi64>, operandSegmentSizes = array<i32: 2, 1>, strides = dense<1> : vector<2xi64>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %29 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %30 = "arith.addf"(%arg2, %29) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%30) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<1x320x66x66xf32>, tensor<320x320x3x3xf32>, tensor<1x320x64x64xf32>) -> tensor<1x320x64x64xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%28, %19) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 320, 64, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x320x64x64xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x320x64x64xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

