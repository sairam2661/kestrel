#executable_target_format = #hal.executable.target<"backend", "format">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "executable", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{objects = [#hal.executable.object<{path = "existing_variant.obj"}>], sym_name = "backend", sym_visibility = "public", target = #executable_target_format}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "entry0", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "extern_fn_a", sym_visibility = "private"}> ({
        }) {hal.executable.objects = [#hal.executable.object<{path = "extern_fn_common.obj"}>, #hal.executable.object<{path = "extern_fn_a.obj"}>]} : () -> ()
        "func.func"() <{function_type = () -> (), sym_name = "extern_fn_b", sym_visibility = "private"}> ({
        }) {hal.executable.objects = [#hal.executable.object<{path = "extern_fn_common.obj"}>, #hal.executable.object<{path = "extern_fn_b.obj"}>]} : () -> ()
        "func.func"() <{function_type = () -> (), sym_name = "entry0"}> ({
          "func.call"() <{callee = @extern_fn_a}> {hal.executable.objects = [#hal.executable.object<{path = "nested_common.obj"}>, #hal.executable.object<{path = "nested_a.obj"}>]} : () -> ()
          "func.call"() <{callee = @extern_fn_b}> {hal.executable.objects = [#hal.executable.object<{path = "nested_common.obj"}>, #hal.executable.object<{path = "nested_b.obj"}>]} : () -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

