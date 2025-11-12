#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "internal_executable", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "export0", sym_visibility = "public"}> ({
      ^bb0(%arg2: !hal.device):
        %2 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%2, %2, %2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
      ^bb0:
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "external_executable", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb_0", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "export1", sym_visibility = "public"}> ({
      ^bb0(%arg1: !hal.device):
        %1 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%1, %1, %1) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb_1", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "export1", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device):
        %0 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%0, %0, %0) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
      ^bb0:
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

