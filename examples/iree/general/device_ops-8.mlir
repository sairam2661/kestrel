"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, i64, !hal.fence, !hal.fence, !hal.buffer) -> (), sym_name = "device_queue_dealloca", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.device, %arg1: i64, %arg2: !hal.fence, %arg3: !hal.fence, %arg4: !hal.buffer):
    "hal.device.queue.dealloca"(%arg0, %arg1, %arg2, %arg3, %arg4) <{flags = 0 : i64}> : (!hal.device, i64, !hal.fence, !hal.fence, !hal.buffer) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

