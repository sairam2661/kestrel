"builtin.module"() ({
  "util.func"() <{function_type = (!flow.channel) -> !flow.channel, sym_name = "channel_split", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !flow.channel):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "arith.constant"() <{value = 101 : index}> : () -> index
    %2 = "flow.channel.split"(%arg0, %0, %1) : (!flow.channel, index, index) -> !flow.channel
    "util.return"(%2) : (!flow.channel) -> ()
  }) : () -> ()
}) : () -> ()

