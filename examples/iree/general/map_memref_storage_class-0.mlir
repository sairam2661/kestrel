#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "", features = "spirv:v1.3,cap:Shader", wgp = <compute =  fp32|int32, storage =  b32, subgroup =  shuffle|arithmetic, subgroup_size_choices = [64], max_workgroup_sizes = [128, 128, 64], max_thread_count_per_workgroup = 128, max_workgroup_memory_bytes = 16384, max_workgroup_counts = [65535, 65535, 65535]>>}>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "vulkan_client_api"}> ({
    %0 = "dialect.memref_producer"() : () -> memref<?x8xf32, #hal.descriptor_type<uniform_buffer>>
    "dialect.memref_consumer"(%0) : (memref<?x8xf32, #hal.descriptor_type<uniform_buffer>>) -> ()
    %1 = "dialect.memref_producer"() : () -> memref<?x8xf32, #hal.descriptor_type<storage_buffer>>
    "dialect.memref_consumer"(%1) : (memref<?x8xf32, #hal.descriptor_type<storage_buffer>>) -> ()
    %2 = "dialect.memref_producer"() : () -> memref<?x8xf32>
    "dialect.memref_consumer"(%2) : (memref<?x8xf32>) -> ()
    %3 = "dialect.memref_producer"() : () -> memref<?x8xf32, 3>
    "dialect.memref_consumer"(%3) : (memref<?x8xf32, 3>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_vulkan_spirv_fb} : () -> ()
}) : () -> ()

