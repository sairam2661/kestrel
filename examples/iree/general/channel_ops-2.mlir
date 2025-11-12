"builtin.module"() ({
  "util.func"() <{function_type = (!stream.channel) -> index, sym_name = "channel_rank", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !stream.channel):
    %0 = "stream.channel.rank"(%arg0) : (!stream.channel) -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

