"builtin.module"() ({
  "util.func"() <{function_type = (!hal.channel, i32, i32) -> !hal.channel, sym_name = "channel_split", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.channel, %arg1: i32, %arg2: i32):
    %0 = "hal.channel.split"(%arg0, %arg1, %arg2) <{flags = 0 : i64}> : (!hal.channel, i32, i32) -> !hal.channel
    "util.return"(%0) : (!hal.channel) -> ()
  }) : () -> ()
}) : () -> ()

