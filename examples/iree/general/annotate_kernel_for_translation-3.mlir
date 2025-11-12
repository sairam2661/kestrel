#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {iree_codegen.denormal_fp_math_f32 = #iree_codegen.denormal_fp_math<"preserve-sign">, iree_codegen.target_info = #iree_gpu.target<arch = "gfx942", features = "", wgp = <compute =  int32, storage =  b32, subgroup =  none, subgroup_size_choices = [64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [2147483647, 2147483647, 2147483647]>>, ukernels = "none"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "test_rocdl_attrs", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, subgroup_size = 64 : index, sym_name = "test_rocdl_attrs", sym_visibility = "public", workgroup_size = [128 : index, 2 : index, 1 : index]}> ({
      ^bb0(%arg1: !hal.device):
        %0 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%0, %0, %0) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void (i32)>, linkage = #llvm.linkage<external>, sym_name = "test_rocdl_attrs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        ^bb0(%arg0: i32):
          "llvm.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

