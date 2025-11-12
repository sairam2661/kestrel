"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, i64, !hal.fence, !hal.fence, !hal.buffer, !hal.file) -> (), sym_name = "device_queue_write", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.device, %arg1: i64, %arg2: !hal.fence, %arg3: !hal.fence, %arg4: !hal.buffer, %arg5: !hal.file):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "arith.constant"() <{value = 200 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 300 : index}> : () -> index
    "hal.device.queue.write"(%arg0, %arg1, %arg2, %arg3, %arg4, %0, %arg5, %1, %2) <{flags = 0 : i64}> : (!hal.device, i64, !hal.fence, !hal.fence, !hal.buffer, index, !hal.file, i64, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

