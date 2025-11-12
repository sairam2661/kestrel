#executable_target_format = #hal.executable.target<"backend", "format">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "exe", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant", sym_visibility = "public", target = #executable_target_format}> ({
      "hal.executable.export"() <{condition_fallback = @unused_fallback_export, layout = #pipeline_layout, sym_name = "unused_export", sym_visibility = "public"}> ({
      }, {
      ^bb0(%arg1: !hal.device):
        %1 = "arith.constant"() <{value = false}> : () -> i1
        "hal.return"(%1) : (i1) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "unused_fallback_export", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "hal.executable.export"() <{condition_fallback = @used_fallback_export, layout = #pipeline_layout, sym_name = "used_export", sym_visibility = "public"}> ({
      }, {
      ^bb0(%arg0: !hal.device):
        %0 = "arith.constant"() <{value = false}> : () -> i1
        "hal.return"(%0) : (i1) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "used_fallback_export", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = () -> (), sym_name = "user", sym_visibility = "private"}> ({
  }) {some.ref = @exe::@variant::@used_export} : () -> ()
}) : () -> ()

