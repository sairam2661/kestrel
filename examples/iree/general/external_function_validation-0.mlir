#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "gfx942", features = "", wgp = <compute =  fp16, storage =  b16, subgroup =  none, subgroup_size_choices = [64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [2147483647, 2147483647, 2147483647]>>, ukernels = "none"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "test", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, subgroup_size = 64 : index, sym_name = "test", sym_visibility = "public", workgroup_size = [128 : index, 2 : index, 1 : index]}> ({
      ^bb0(%arg0: !hal.device):
        %0 = "arith.constant"() <{value = 128 : index}> : () -> index
        %1 = "arith.constant"() <{value = 2 : index}> : () -> index
        %2 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%0, %1, %2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "external_func", sym_visibility = "private", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        }) : () -> ()
        "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<void ()>, linkage = #llvm.linkage<external>, sym_name = "test", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
          "llvm.call"() <{CConv = #llvm.cconv<ccc>, TailCallKind = #llvm.tailcallkind<none>, callee = @external_func, fastmathFlags = #llvm.fastmath<none>, op_bundle_sizes = array<i32>, operandSegmentSizes = array<i32: 0, 0>}> : () -> ()
          "llvm.return"() : () -> ()
        }) {rocdl.kernel} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

