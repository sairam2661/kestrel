"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, !hal.fence) -> (), sym_name = "ImmediatelyResolveDeviceQueueBarrier", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.device, %arg1: !hal.fence):
    %0 = "arith.constant"() <{value = -1 : i64}> : () -> i64
    %1 = "util.null"() : () -> !hal.fence
    "hal.device.queue.barrier"(%arg0, %0, %1, %arg1) <{flags = 0 : i64}> : (!hal.device, i64, !hal.fence, !hal.fence) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

