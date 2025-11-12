#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "", features = "spirv:v1.6,cap:Shader", wgp = <compute =  fp32|int32, storage =  b32, subgroup =  none, subgroup_size_choices = [16], max_workgroup_sizes = [128, 128, 64], max_thread_count_per_workgroup = 128, max_workgroup_memory_bytes = 16384, max_workgroup_counts = [65535, 65535, 65535]>>}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "copy_as_generic"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %3 = "hal.interface.binding.subspan"(%1, %2) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> memref<?x?xi32>
    %4 = "hal.interface.binding.subspan"(%1, %2) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> memref<?x?xi32>
    "linalg.generic"(%3, %4) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      "linalg.yield"(%arg0) : (i32) -> ()
    }) : (memref<?x?xi32>, memref<?x?xi32>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_vulkan_spirv_fb} : () -> ()
}) : () -> ()

