#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "gfx1100", features = "", wgp = <compute =  fp32, storage =  b32, subgroup =  arithmetic, subgroup_size_choices = [32, 64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [2147483647, 2147483647, 2147483647]>>}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "manual_subgroup_size", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, subgroup_size = 64 : index, sym_name = "manual_subgroup_size", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device):
        %1 = "arith.constant"() <{value = 32 : index}> : () -> index
        %2 = "arith.constant"() <{value = 8 : index}> : () -> index
        %3 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%1, %2, %3) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "manual_subgroup_size"}> ({
          %0 = "gpu.lane_id"() : () -> index
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

