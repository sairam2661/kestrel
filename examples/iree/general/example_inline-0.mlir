#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "", features = "spirv:v1.3,cap:Shader", wgp = <compute =  fp32|int32, storage =  b32, subgroup =  none, subgroup_size_choices = [64, 64], max_workgroup_sizes = [128, 128, 64], max_thread_count_per_workgroup = 128, max_workgroup_memory_bytes = 16384, max_workgroup_counts = [65535, 65535, 65535]>>}>
#map = affine_map<()[s0] -> (s0 ceildiv 64)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
#device_target_vulkan = #hal.device.target<"vulkan", [#executable_target_vulkan_spirv_fb]> : !hal.device
"builtin.module"() <{sym_name = "example"}> ({
  "func.func"() <{function_type = (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>, sym_name = "mixed_invocation"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.dim"(%arg0, %0) : (tensor<?xf32>, index) -> index
    %2 = "arith.index_cast"(%1) : (index) -> i32
    %3 = "hal.dispatch.extern"(%1, %2, %arg0, %arg1, %1, %1, %1) <{export_name = "main", layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 3, 2, 1>, target_objects = [[#hal.executable.object<{path = "samples/custom_dispatch/vulkan/shaders/simple_mul.spv"}>]], target_ordinals = [0 : index], targets = [#executable_target_vulkan_spirv_fb], tied_operands = [-1 : index]}> ({
    ^bb0(%arg2: !hal.device, %arg3: index):
      %5 = "affine.apply"(%arg3) <{map = #map}> : (index) -> index
      %6 = "arith.constant"() <{value = 1 : index}> : () -> index
      "hal.return"(%5, %6, %6) : (index, index, index) -> ()
    }, {
    }) : (index, i32, tensor<?xf32>, tensor<?xf32>, index, index, index) -> tensor<?xf32>
    %4 = "arith.addf"(%3, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
    "func.return"(%4) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) {hal.device.targets = [#device_target_vulkan]} : () -> ()

