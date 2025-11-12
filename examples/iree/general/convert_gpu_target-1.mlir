#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "rdna4", features = "spirv:v1.6,cap:Shader", wgp = <compute =  fp64|fp32|fp16|int64|int32|int16|int8, storage =  b32, subgroup =  none, mma = [<WMMAR4_F32_16x16x16_F16>, <WMMAR4_F16_16x16x16_F16>, <WMMAR4_BF16_16x16x16_BF16>, <WMMAR4_F32_16x16x16_BF16>, <WMMAR4_F32_16x16x16_F8E5M2>, <WMMAR4_F32_16x16x16_F8E4M3FN_F8E5M2>, <WMMAR4_I32_16x16x16_I8>], subgroup_size_choices = [32, 64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [2147483647, 2147483647, 2147483647]>>}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "dispatch_with_unsupported_types"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan_spirv_fb", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device):
        %0:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%0#0, %0#1, %0#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "dispatch"}> ({
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

