#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable.source"() <{sym_name = "executable", sym_visibility = "public"}> ({
    "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "export0", sym_visibility = "public"}> ({
    ^bb0(%arg0: !hal.device, %arg1: index):
      "hal.return"(%arg1, %arg1, %arg1) : (index, index, index) -> ()
    }, {
    }) : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = () -> (), sym_name = "export0"}> ({
        "func.return"() : () -> ()
      }) : () -> ()
    }) : () -> ()
    "hal.executable.source_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

