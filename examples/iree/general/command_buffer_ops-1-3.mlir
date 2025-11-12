"builtin.module"() ({
  "util.func"() <{function_type = (!hal.command_buffer) -> (), sym_name = "command_buffer_execution_barrier", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.command_buffer):
    "hal.command_buffer.execution_barrier"(%arg0) <{flags = 0 : i64, source_stage_mask = 1 : i32, target_stage_mask = 2 : i32}> : (!hal.command_buffer) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

