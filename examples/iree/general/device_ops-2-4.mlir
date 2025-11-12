"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, i64, !hal.fence, !hal.fence, i8, !hal.buffer) -> (), sym_name = "device_queue_fill", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.device, %arg1: i64, %arg2: !hal.fence, %arg3: !hal.fence, %arg4: i8, %arg5: !hal.buffer):
    %0 = "arith.constant"() <{value = 200 : index}> : () -> index
    %1 = "arith.constant"() <{value = 300 : index}> : () -> index
    "hal.device.queue.fill"(%arg0, %arg1, %arg2, %arg3, %arg5, %0, %1, %arg4) <{flags = 0 : i64}> : (!hal.device, i64, !hal.fence, !hal.fence, !hal.buffer, index, index, i8) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

