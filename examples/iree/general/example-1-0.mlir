#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "", features = "spirv:v1.3,cap:Shader", wgp = <compute =  fp32|int32, storage =  b32, subgroup =  none, subgroup_size_choices = [64, 64], max_workgroup_sizes = [128, 128, 64], max_thread_count_per_workgroup = 128, max_workgroup_memory_bytes = 16384, max_workgroup_counts = [65535, 65535, 65535]>>}>
#map = affine_map<()[s0] -> (s0 ceildiv 64)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
#pipeline_layout1 = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
#device_target_vulkan = #hal.device.target<"vulkan", [#executable_target_vulkan_spirv_fb]> : !hal.device
"builtin.module"() <{sym_name = "example"}> ({
  "hal.executable.source"() <{objects = #hal.executable.objects<{#executable_target_vulkan_spirv_fb = [#hal.executable.object<{path = "samples/custom_dispatch/vulkan/shaders/simple_mul.spv"}>]}>, sym_name = "simple_mul", sym_visibility = "private"}> ({
    "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "main", sym_visibility = "public"}> ({
    ^bb0(%arg4: !hal.device, %arg5: index):
      %8 = "affine.apply"(%arg5) <{map = #map}> : (index) -> index
      %9 = "arith.constant"() <{value = 1 : index}> : () -> index
      "hal.return"(%8, %9, %9) : (index, index, index) -> ()
    }, {
    }) : () -> ()
    "hal.executable.source_end"() : () -> ()
  }) : () -> ()
  "hal.executable.source"() <{objects = #hal.executable.objects<{#executable_target_vulkan_spirv_fb = [#hal.executable.object<{path = "samples/custom_dispatch/vulkan/shaders/simple_mul_inplace.spv"}>]}>, sym_name = "simple_mul_inplace", sym_visibility = "private"}> ({
    "hal.executable.export"() <{layout = #pipeline_layout1, ordinal = 0 : index, sym_name = "main", sym_visibility = "public"}> ({
    ^bb0(%arg2: !hal.device, %arg3: index):
      %6 = "affine.apply"(%arg3) <{map = #map}> : (index) -> index
      %7 = "arith.constant"() <{value = 1 : index}> : () -> index
      "hal.return"(%6, %7, %7) : (index, index, index) -> ()
    }, {
    }) : () -> ()
    "hal.executable.source_end"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>, sym_name = "mixed_invocation"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.dim"(%arg0, %0) : (tensor<?xf32>, index) -> index
    %2 = "arith.index_cast"(%1) : (index) -> i32
    %3 = "flow.dispatch"(%1, %2, %arg0, %arg1, %1, %1, %1) <{entry_points = [@simple_mul::@main], operandSegmentSizes = array<i32: 1, 3, 2, 1>, tied_operands = [-1 : index]}> : (index, i32, tensor<?xf32>, tensor<?xf32>, index, index, index) -> tensor<?xf32>
    %4 = "arith.addf"(%3, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
    %5 = "flow.dispatch"(%1, %2, %3, %4, %1, %1, %1) <{entry_points = [@simple_mul_inplace::@main], operandSegmentSizes = array<i32: 1, 3, 2, 1>, tied_operands = [2 : index]}> : (index, i32, tensor<?xf32>, tensor<?xf32>, index, index, index) -> tensor<?xf32>
    "func.return"(%5) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) {hal.device.targets = [#device_target_vulkan]} : () -> ()

