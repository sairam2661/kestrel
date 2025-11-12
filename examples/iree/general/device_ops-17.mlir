"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, i64) -> (), sym_name = "device_queue_flush", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.device, %arg1: i64):
    "hal.device.queue.flush"(%arg0, %arg1) : (!hal.device, i64) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

