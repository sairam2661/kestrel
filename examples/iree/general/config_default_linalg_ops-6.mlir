#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "", features = "spirv:v1.6,cap:Shader", wgp = <compute =  fp32|int32, storage =  b32, subgroup =  none, subgroup_size_choices = [32], max_workgroup_sizes = [128, 128, 64], max_thread_count_per_workgroup = 128, max_workgroup_memory_bytes = 16384, max_workgroup_counts = [65535, 65535, 65535]>>}>
#map = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d5, d2 + d6, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d5, d6, d3, d4)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3, d4)>
#map3 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3, d4)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dwconv_elementwise"}> ({
    %0 = "arith.constant"() <{value = dense_resource<__elided__> : tensor<3x3x1x4xf32>}> : () -> tensor<3x3x1x4xf32>
    %1 = "arith.constant"() <{value = 1.001000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 18 : index}> : () -> index
    %4 = "arith.constant"() <{value = 1 : index}> : () -> index
    %5 = "arith.constant"() <{value = 4 : index}> : () -> index
    %6 = "arith.constant"() <{value = 4576 : index}> : () -> index
    %7 = "arith.constant"() <{value = 6272 : index}> : () -> index
    %8 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x21x20x1xf32>>
    %9 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x19x18x1x4xf32>>
    %10 = "tensor.empty"() : () -> tensor<1x19x18x1x4xf32>
    %11 = "iree_tensor_ext.dispatch.tensor.load"(%8) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 21, 20, 1>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x21x20x1xf32>>) -> tensor<1x21x20x1xf32>
    %12 = "tensor.empty"() : () -> tensor<1x19x18x1x4xf32>
    %13 = "linalg.fill"(%2, %12) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: f32, %arg6: f32):
      "linalg.yield"(%arg5) : (f32) -> ()
    }) : (f32, tensor<1x19x18x1x4xf32>) -> tensor<1x19x18x1x4xf32>
    %14 = "linalg.depthwise_conv_2d_nhwc_hwcm"(%11, %0, %13) <{dilations = dense<1> : tensor<2xi64>, operandSegmentSizes = array<i32: 2, 1>, strides = dense<1> : tensor<2xi64>}> ({
    ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
      %18 = "arith.mulf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %19 = "arith.addf"(%arg4, %18) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%19) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<1x21x20x1xf32>, tensor<3x3x1x4xf32>, tensor<1x19x18x1x4xf32>) -> tensor<1x19x18x1x4xf32>
    %15 = "linalg.generic"(%14, %10) <{indexing_maps = [#map3, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %16 = "math.sqrt"(%1) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      %17 = "arith.addf"(%arg0, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%17) : (f32) -> ()
    }) : (tensor<1x19x18x1x4xf32>, tensor<1x19x18x1x4xf32>) -> tensor<1x19x18x1x4xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%15, %9) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0>, static_sizes = array<i64: 1, 19, 18, 1, 4>, static_strides = array<i64: 1, 1, 1, 1, 1>}> : (tensor<1x19x18x1x4xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x19x18x1x4xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_vulkan_spirv_fb} : () -> ()
}) : () -> ()

