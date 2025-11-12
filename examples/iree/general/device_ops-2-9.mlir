"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, i64, !hal.fence, !hal.fence) -> (), sym_name = "device_queue_barrier", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.device, %arg1: i64, %arg2: !hal.fence, %arg3: !hal.fence):
    "hal.device.queue.barrier"(%arg0, %arg1, %arg2, %arg3) <{flags = 0 : i64}> : (!hal.device, i64, !hal.fence, !hal.fence) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

