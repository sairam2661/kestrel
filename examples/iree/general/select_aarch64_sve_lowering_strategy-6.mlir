#executable_target_embedded_elf_arm_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-arm_64", {cpu_features = "+sve", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "aarch64-none-elf"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 * 2 + d4, d3 * 2 + d5)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x64x114x114xf32>>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x64x56x56xf32>>) -> (), sym_name = "pooling_nchw_max"}> ({
  ^bb0(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x64x114x114xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x64x56x56xf32>>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x64x114x114xf32>>
    %2 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x64x56x56xf32>>
    %3 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 64, 114, 114>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x64x114x114xf32>>) -> tensor<1x64x114x114xf32>
    %4 = "tensor.empty"() : () -> tensor<1x64x56x56xf32>
    %5 = "tensor.empty"() : () -> tensor<3x3xf32>
    %6 = "linalg.fill"(%0, %4) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: f32, %arg6: f32):
      "linalg.yield"(%arg5) : (f32) -> ()
    }) : (f32, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %7 = "linalg.pooling_nchw_max"(%3, %5, %4) <{dilations = dense<1> : vector<2xi64>, operandSegmentSizes = array<i32: 2, 1>, strides = dense<2> : vector<2xi64>}> ({
    ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
      %8 = "arith.maximumf"(%arg4, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%8) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<1x64x114x114xf32>, tensor<3x3xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%7, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 64, 56, 56>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x64x56x56xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x64x56x56xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_arm_64} : () -> ()
}) : () -> ()

