#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "executable0", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "cuda_nvptx_fb", sym_visibility = "public", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "export0", sym_visibility = "public"}> ({
      ^bb0(%arg7: !hal.device):
        %3 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%3, %3, %3) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 16 : i32, llvm.noalias}], function_type = !llvm.func<void (ptr<1>)>, linkage = #llvm.linkage<external>, sym_name = "export0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        ^bb0(%arg6: !llvm.ptr<1>):
          "llvm.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "export0", sym_visibility = "public"}> ({
      ^bb0(%arg5: !hal.device):
        %2 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%2, %2, %2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 16 : i32, llvm.noalias}], function_type = !llvm.func<void (ptr<1>)>, linkage = #llvm.linkage<external>, sym_name = "export0", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        ^bb0(%arg4: !llvm.ptr<1>):
          "llvm.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "executable1", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "cuda_nvptx_fb", sym_visibility = "public", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "export1", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device):
        %1 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%1, %1, %1) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 16 : i32, llvm.noalias}], function_type = !llvm.func<void (ptr<1>)>, linkage = #llvm.linkage<external>, sym_name = "export1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        ^bb0(%arg2: !llvm.ptr<1>):
          "llvm.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "export1", sym_visibility = "public"}> ({
      ^bb0(%arg1: !hal.device):
        %0 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%0, %0, %0) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "llvm.func"() <{CConv = #llvm.cconv<ccc>, arg_attrs = [{llvm.align = 16 : i32, llvm.noalias}], function_type = !llvm.func<void (ptr<1>)>, linkage = #llvm.linkage<external>, sym_name = "export1", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
        ^bb0(%arg0: !llvm.ptr<1>):
          "llvm.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

