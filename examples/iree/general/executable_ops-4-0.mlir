#executable_target_format = #hal.executable.target<"backend", "format">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "executable"}> ({
    "hal.executable.variant"() <{objects = [#hal.executable.object<{path = "foo.bin"}>, #hal.executable.object<{path = "bar.bin"}>], sym_name = "backend", target = #executable_target_format}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "entry0", sym_visibility = "public", workgroup_size = [4 : index, 1 : index, 1 : index]}> ({
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable.binary"() <{data = dense<1> : vector<128xi8>, format = "some_format", sym_name = "backend_binary"}> : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

