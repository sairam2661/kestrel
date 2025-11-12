#executable_target_format = #hal.executable.target<"backend", "format">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "export_with_condition_region"}> ({
    "hal.executable.variant"() <{sym_name = "backend", target = #executable_target_format}> ({
      "hal.executable.export"() <{condition_fallback = @fallback_ge_1024, layout = #pipeline_layout, ordinal = 0 : index, sym_name = "use_lt_1024", sym_visibility = "public"}> ({
      }, {
      ^bb0(%arg0: !hal.device, %arg1: index):
        %0 = "arith.constant"() <{value = 1024 : index}> : () -> index
        %1 = "arith.cmpi"(%arg1, %0) <{predicate = 2 : i64}> : (index, index) -> i1
        "hal.return"(%1) : (i1) -> ()
      }) : () -> ()
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 1 : index, sym_name = "fallback_ge_1024", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

