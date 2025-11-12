#executable_target_format = #hal.executable.target<"backend", "format">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "export_with_workgroup_count_region"}> ({
    "hal.executable.variant"() <{sym_name = "backend", target = #executable_target_format}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "entry0", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device, %arg1: index, %arg2: index):
        %0 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%arg1, %arg2, %0) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

