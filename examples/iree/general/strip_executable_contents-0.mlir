#executable_target_format = #hal.executable.target<"backend", "format">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "ex"}> ({
    "hal.executable.variant"() <{sym_name = "backend", target = #executable_target_format}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "entry0", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "entry0"}> ({
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

