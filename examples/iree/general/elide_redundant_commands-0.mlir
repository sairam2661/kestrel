"builtin.module"() ({
  "util.func"() <{function_type = (!hal.command_buffer, !hal.buffer) -> (), sym_name = "elideRedundantBarriers", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.command_buffer, %arg1: !hal.buffer):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    "hal.command_buffer.execution_barrier"(%arg0) <{flags = 0 : i64, source_stage_mask = 28 : i32, target_stage_mask = 13 : i32}> : (!hal.command_buffer) -> ()
    "hal.command_buffer.execution_barrier"(%arg0) <{flags = 0 : i64, source_stage_mask = 28 : i32, target_stage_mask = 13 : i32}> : (!hal.command_buffer) -> ()
    "hal.command_buffer.copy_buffer"(%arg0, %arg1, %0, %arg1, %0, %1) <{flags = 0 : i64}> : (!hal.command_buffer, !hal.buffer, index, !hal.buffer, index, index) -> ()
    "hal.command_buffer.execution_barrier"(%arg0) <{flags = 0 : i64, source_stage_mask = 28 : i32, target_stage_mask = 13 : i32}> : (!hal.command_buffer) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

