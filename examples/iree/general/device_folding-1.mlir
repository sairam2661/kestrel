"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, !hal.fence) -> (), sym_name = "HoistDeviceQueueBarrierChain", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.device, %arg1: !hal.fence):
    %0 = "arith.constant"() <{value = -1 : i64}> : () -> i64
    %1 = "hal.fence.create"(%arg0) <{flags = 0 : i64}> : (!hal.device) -> !hal.fence
    "util.call"(%1) <{callee = @external_async_fn}> : (!hal.fence) -> ()
    "hal.device.queue.barrier"(%arg0, %0, %1, %arg1) <{flags = 0 : i64}> : (!hal.device, i64, !hal.fence, !hal.fence) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!hal.fence) -> (), sym_name = "external_async_fn", sym_visibility = "private"}> ({
  }) : () -> ()
}) : () -> ()

