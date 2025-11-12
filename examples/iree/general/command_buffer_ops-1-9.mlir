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
  "util.func"() <{function_type = (!hal.command_buffer, !hal.executable, index, index, index, index, !hal.buffer, index) -> (), sym_name = "command_buffer_dispatch", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.command_buffer, %arg1: !hal.executable, %arg2: index, %arg3: index, %arg4: index, %arg5: index, %arg6: !hal.buffer, %arg7: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 4 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4096 : index}> : () -> index
    %4 = "arith.constant"() <{value = 8000 : index}> : () -> index
    "hal.command_buffer.dispatch"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %3, %2, %4, %3) <{flags = 0 : i64, operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 1, 0, 2, 2, 2>}> : (!hal.command_buffer, !hal.executable, index, index, index, index, !hal.buffer, index, index, index, index, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

