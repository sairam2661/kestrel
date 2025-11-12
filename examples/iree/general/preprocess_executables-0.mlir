#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb", {replace_i64 = 123 : i64}>
#executable_target_cuda_nvptx_fb1 = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#executable_target_cuda_nvptx_fb2 = #hal.executable.target<"cuda", "cuda-nvptx-fb", {replace_i64 = 456 : i64}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "executable_a", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant_a", sym_visibility = "public", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_a", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device, %arg4: index):
        %5 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%5, %5, %5) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "dispatch_a"}> ({
          %4 = "arith.constant"() <{value = 8080 : i64}> : () -> i64
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "variant_unmodified", sym_visibility = "public", target = #executable_target_cuda_nvptx_fb1}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_unmodified", sym_visibility = "public"}> ({
      ^bb0(%arg1: !hal.device, %arg2: index):
        %3 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%3, %3, %3) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "dispatch_unmodified"}> ({
          %2 = "arith.constant"() <{value = 8181 : i64}> : () -> i64
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "executable_b", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant_b", sym_visibility = "public", target = #executable_target_cuda_nvptx_fb2}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "dispatch_b", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device):
        %1 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%1, %1, %1) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "dispatch_b"}> ({
          %0 = "arith.constant"() <{value = 8282 : i64}> : () -> i64
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

