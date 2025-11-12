#executable_target_format = #hal.executable.target<"backend", "format">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "DropTrueConditionRegion"}> ({
    "hal.executable.variant"() <{sym_name = "backend", target = #executable_target_format}> ({
      "hal.executable.export"() <{condition_fallback = @never_fallback, layout = #pipeline_layout, ordinal = 0 : index, sym_name = "always_use", sym_visibility = "public"}> ({
      }, {
      ^bb0(%arg0: !hal.device):
        %0 = "arith.constant"() <{value = true}> : () -> i1
        "hal.return"(%0) : (i1) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 1 : index, sym_name = "never_fallback", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

