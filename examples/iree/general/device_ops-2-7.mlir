"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, i64, !hal.fence, !hal.fence, !hal.file, !hal.buffer) -> (), sym_name = "device_queue_read", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.device, %arg1: i64, %arg2: !hal.fence, %arg3: !hal.fence, %arg4: !hal.file, %arg5: !hal.buffer):
    %0 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 200 : index}> : () -> index
    %2 = "arith.constant"() <{value = 300 : index}> : () -> index
    "hal.device.queue.read"(%arg0, %arg1, %arg2, %arg3, %arg4, %0, %arg5, %1, %2) <{flags = 0 : i64}> : (!hal.device, i64, !hal.fence, !hal.fence, !hal.file, i64, !hal.buffer, index, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

