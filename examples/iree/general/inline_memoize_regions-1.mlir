"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, i64) -> !hal.command_buffer, sym_name = "command_buffer_memoize", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.device, %arg1: i64):
    %0 = "hal.device.memoize"(%arg0, %arg1) ({
      %1 = "hal.command_buffer.create"(%arg0, %arg1) <{command_categories = 3 : i32, modes = 0 : i32}> : (!hal.device, i64) -> !hal.command_buffer
      "hal.command_buffer.execution_barrier"(%1) <{flags = 0 : i64, source_stage_mask = 1 : i32, target_stage_mask = 2 : i32}> : (!hal.command_buffer) -> ()
      "hal.command_buffer.finalize"(%1) : (!hal.command_buffer) -> ()
      "hal.return"(%1) : (!hal.command_buffer) -> ()
    }) : (!hal.device, i64) -> !hal.command_buffer
    "util.return"(%0) : (!hal.command_buffer) -> ()
  }) : () -> ()
}) : () -> ()

