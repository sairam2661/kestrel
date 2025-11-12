#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "", features = "spirv:v1.6,cap:Shader", wgp = <compute =  fp32|int32, storage =  b32, subgroup =  none, subgroup_size_choices = [32], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [65535, 65535, 65535]>>}>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "splat_i64_with_assume"}> ({
    %0 = "arith.constant"() <{value = 64 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %4 = "arith.extui"(%3) : (i32) -> i64
    %5 = "util.assume.int"(%4) <{assumptions = [[#util.int.assumption<umin = 1, umax = 1>, #util.int.assumption<umin = 2, umax = 2, udiv = 2>, #util.int.assumption<umin = 1, umax = 1>, #util.int.assumption<umin = 2, umax = 2, udiv = 2>, #util.int.assumption<umin = 1, umax = 1>]]}> : (i64) -> i64
    %6 = "hal.interface.binding.subspan"(%1, %2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> memref<?xi64, #spirv.storage_class<StorageBuffer>>
    "memref.store"(%5, %6, %1) : (i64, memref<?xi64, #spirv.storage_class<StorageBuffer>>, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_vulkan_spirv_fb} : () -> ()
}) : () -> ()

