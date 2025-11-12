#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "", features = "spirv:v1.6,cap:Shader", wgp = <compute =  fp32|int32, storage =  b32, subgroup =  none, subgroup_size_choices = [32], max_workgroup_sizes = [128, 128, 64], max_thread_count_per_workgroup = 128, max_workgroup_memory_bytes = 16384, max_workgroup_counts = [65535, 65535, 65535]>>}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "odd_reduction_dimension_size_2809"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0xFF800000 : f32}> : () -> f32
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x2809xf32>>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<512x2809xf32>>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 512, 2809>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<512x2809xf32>>) -> tensor<512x2809xf32>
    %5 = "tensor.empty"() : () -> tensor<512x2809xf32>
    %6 = "tensor.empty"() : () -> tensor<512xf32>
    %7 = "linalg.fill"(%1, %6) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: f32, %arg6: f32):
      "linalg.yield"(%arg5) : (f32) -> ()
    }) : (f32, tensor<512xf32>) -> tensor<512xf32>
    %8 = "linalg.generic"(%4, %7) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32):
      %12 = "arith.maximumf"(%arg4, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%12) : (f32) -> ()
    }) : (tensor<512x2809xf32>, tensor<512xf32>) -> tensor<512xf32>
    %9 = "linalg.generic"(%4, %8, %5) <{indexing_maps = [#map, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
      %10 = "arith.subf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %11 = "math.exp"(%10) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      "linalg.yield"(%11) : (f32) -> ()
    }) : (tensor<512x2809xf32>, tensor<512xf32>, tensor<512x2809xf32>) -> tensor<512x2809xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%9, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 512, 2809>, static_strides = array<i64: 1, 1>}> : (tensor<512x2809xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<512x2809xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_vulkan_spirv_fb} : () -> ()
}) : () -> ()

