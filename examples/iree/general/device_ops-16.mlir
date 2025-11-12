"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, i64, !hal.fence, !hal.fence, !hal.command_buffer, !hal.buffer, !hal.buffer) -> (), sym_name = "device_queue_execute_indirect", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.device, %arg1: i64, %arg2: !hal.fence, %arg3: !hal.fence, %arg4: !hal.command_buffer, %arg5: !hal.buffer, %arg6: !hal.buffer):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "arith.constant"() <{value = 200 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1000 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2000 : index}> : () -> index
    "hal.device.queue.execute.indirect"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %0, %1, %2, %3) <{flags = 0 : i64}> : (!hal.device, i64, !hal.fence, !hal.fence, !hal.command_buffer, !hal.buffer, !hal.buffer, index, index, index, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

