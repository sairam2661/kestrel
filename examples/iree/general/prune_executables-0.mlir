#executable_target_format = #hal.executable.target<"backend", "format">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "unused_exe", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "unused_variant", sym_visibility = "public", target = #executable_target_format}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "unused_export", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "unused_public_exe", sym_visibility = "public"}> ({
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "used_exe", sym_visibility = "private"}> ({
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (i1) -> (), sym_name = "user", sym_visibility = "private"}> ({
  ^bb0(%arg0: i1):
    "scf.if"(%arg0) ({
      %0 = "util.optimization_barrier"(%arg0) {some.ref = @used_exe} : (i1) -> i1
      "scf.yield"() : () -> ()
    }, {
    }) : (i1) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

