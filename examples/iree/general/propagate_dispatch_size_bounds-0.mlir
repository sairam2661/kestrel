#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "gfx1100", features = "", wgp = <compute =  fp32, storage =  b32, subgroup =  arithmetic, subgroup_size_choices = [32, 64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [2147483647, 2147483647, 2147483647]>>}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "static", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "static", sym_visibility = "public", workgroup_size = [64 : index, 2 : index, 1 : index]}> ({
      ^bb0(%arg0: !hal.device):
        %16 = "arith.constant"() <{value = 32 : index}> : () -> index
        %17 = "arith.constant"() <{value = 8 : index}> : () -> index
        %18 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%16, %17, %18) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "static"}> ({
          %0 = "gpu.lane_id"() : () -> index
          %1 = "gpu.thread_id"() <{dimension = #gpu<dim x>}> : () -> index
          %2 = "gpu.thread_id"() <{dimension = #gpu<dim y>}> : () -> index
          %3 = "gpu.thread_id"() <{dimension = #gpu<dim z>}> : () -> index
          %4 = "gpu.block_dim"() <{dimension = #gpu<dim x>}> : () -> index
          %5 = "gpu.block_dim"() <{dimension = #gpu<dim y>}> : () -> index
          %6 = "gpu.block_dim"() <{dimension = #gpu<dim z>}> : () -> index
          %7 = "hal.interface.workgroup.size"() <{dimension = 0 : index}> : () -> index
          %8 = "hal.interface.workgroup.size"() <{dimension = 1 : index}> : () -> index
          %9 = "hal.interface.workgroup.size"() <{dimension = 2 : index}> : () -> index
          %10 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
          %11 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
          %12 = "hal.interface.workgroup.id"() <{dimension = 2 : index}> : () -> index
          %13 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
          %14 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
          %15 = "hal.interface.workgroup.count"() <{dimension = 2 : index}> : () -> index
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

