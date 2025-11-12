"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, i64, !util.buffer, !util.buffer, i32, i32) -> (), sym_name = "channel_create", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.device, %arg1: i64, %arg2: !util.buffer, %arg3: !util.buffer, %arg4: i32, %arg5: i32):
    %0 = "hal.channel.create"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5) <{flags = 0 : i64}> : (!hal.device, i64, !util.buffer, !util.buffer, i32, i32) -> !hal.channel
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

