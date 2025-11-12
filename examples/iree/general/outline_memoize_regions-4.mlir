#device_target_local = #hal.device.target<"local"> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_local, sym_name = "device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{sym_name = "executable", sym_visibility = "private", type = !hal.executable}> : () -> ()
  "util.global"() <{sym_name = "buffer", sym_visibility = "private", type = !hal.buffer}> : () -> ()
  "util.func"() <{function_type = () -> !hal.command_buffer, sym_name = "memoize_command_buffer", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "util.global.load"() <{global = @device, is_immutable}> : () -> !hal.device
    %1 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %2 = "util.global.load"() <{global = @executable, is_immutable}> : () -> !hal.executable
    %3 = "util.global.load"() <{global = @buffer, is_immutable}> : () -> !hal.buffer
    %4 = "arith.constant"() <{value = 0 : index}> : () -> index
    %5 = "arith.constant"() <{value = 1 : index}> : () -> index
    %6 = "hal.device.memoize"(%0, %1) ({
      %7 = "hal.command_buffer.create"(%0, %1) <{command_categories = 3 : i32, modes = 0 : i32}> : (!hal.device, i64) -> !hal.command_buffer
      %8 = "arith.constant"() <{value = 123 : index}> : () -> index
      %9 = "arith.constant"() <{value = 100 : index}> : () -> index
      "hal.command_buffer.dispatch.indirect"(%7, %2, %8, %3, %9, %3, %4, %5) <{flags = 0 : i64, operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 0, 1, 1, 1>}> : (!hal.command_buffer, !hal.executable, index, !hal.buffer, index, !hal.buffer, index, index) -> ()
      "hal.command_buffer.execution_barrier"(%7) <{flags = 0 : i64, source_stage_mask = 1 : i32, target_stage_mask = 2 : i32}> : (!hal.command_buffer) -> ()
      "hal.command_buffer.finalize"(%7) : (!hal.command_buffer) -> ()
      "hal.return"(%7) : (!hal.command_buffer) -> ()
    }) : (!hal.device, i64) -> !hal.command_buffer
    "util.return"(%6) : (!hal.command_buffer) -> ()
  }) : () -> ()
}) : () -> ()

