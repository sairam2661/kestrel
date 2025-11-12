"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, !hal.command_buffer, !hal.fence) -> !hal.fence, sym_name = "HoistDeviceQueueBarrierChainOutOfOrder", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.device, %arg1: !hal.command_buffer, %arg2: !hal.fence):
    %0 = "arith.constant"() <{value = -1 : i64}> : () -> i64
    %1 = "hal.fence.create"(%arg0) <{flags = 0 : i64}> {test.fence0} : (!hal.device) -> !hal.fence
    "hal.device.queue.execute"(%arg0, %0, %arg2, %1, %arg1) <{flags = 0 : i64}> : (!hal.device, i64, !hal.fence, !hal.fence, !hal.command_buffer) -> ()
    %2 = "hal.fence.create"(%arg0) <{flags = 0 : i64}> {test.fence1} : (!hal.device) -> !hal.fence
    "hal.device.queue.barrier"(%arg0, %0, %1, %2) <{flags = 0 : i64}> : (!hal.device, i64, !hal.fence, !hal.fence) -> ()
    "util.return"(%2) : (!hal.fence) -> ()
  }) : () -> ()
}) : () -> ()

