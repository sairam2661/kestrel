#executable_target_format = #hal.executable.target<"backend", "format">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "exe", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "variant", sym_visibility = "public", target = #executable_target_format}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "unused_export", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "used_export", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = () -> (), sym_name = "user", sym_visibility = "private"}> ({
  }) {some.ref = @exe::@variant::@used_export} : () -> ()
}) : () -> ()

