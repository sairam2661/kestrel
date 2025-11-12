#executable_target_format = #hal.executable.target<"backend", "format">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "ex"}> ({
    "hal.executable.variant"() <{sym_name = "backend", target = #executable_target_format}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "entry0", sym_visibility = "public"}> ({
      }, {
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!hal.command_buffer, !hal.executable, index, !hal.buffer, index, index) -> (), sym_name = "command_buffer_dispatch_indirect", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.command_buffer, %arg1: !hal.executable, %arg2: index, %arg3: !hal.buffer, %arg4: index, %arg5: index):
    "hal.command_buffer.dispatch.indirect"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg3, %arg4, %arg5) <{flags = 0 : i64, operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 0, 1, 1, 1>}> : (!hal.command_buffer, !hal.executable, index, !hal.buffer, index, !hal.buffer, index, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

