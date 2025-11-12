"builtin.module"() ({
  "util.func"() <{function_type = (!stream.channel) -> (), sym_name = "channel_split", sym_visibility = "public"}> ({
  ^bb0(%arg0: !stream.channel):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "arith.constant"() <{value = 101 : index}> : () -> index
    %2 = "stream.channel.split"(%arg0, %0, %1) : (!stream.channel, index, index) -> !stream.channel
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

