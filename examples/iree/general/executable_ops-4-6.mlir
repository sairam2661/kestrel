#executable_target_format = #hal.executable.target<"backend", "format">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "unresolved_workload_ex"}> ({
    "hal.executable.variant"() <{sym_name = "backend", target = #executable_target_format}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "entry0", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device, %arg4: index):
        "hal.return"(%arg4, %arg4, %arg4) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!hal.device, index, index) -> (index, index, index), sym_name = "unresolved_workload", sym_visibility = "public", tied_operands = [-1 : index, -1 : index, -1 : index]}> ({
  ^bb0(%arg0: !hal.device, %arg1: index, %arg2: index):
    %0:3 = "hal.executable.calculate_workgroups"(%arg0, %arg1, %arg2) <{entry_point = @unresolved_workload_ex::@backend::@entry0}> : (!hal.device, index, index) -> (index, index, index)
    "util.return"(%0#0, %0#1, %0#2) : (index, index, index) -> ()
  }) : () -> ()
}) : () -> ()

