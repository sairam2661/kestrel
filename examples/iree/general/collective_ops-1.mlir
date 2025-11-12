"builtin.module"() ({
  "util.func"() <{function_type = (!flow.channel) -> index, sym_name = "channel_rank", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !flow.channel):
    %0 = "flow.channel.rank"(%arg0) : (!flow.channel) -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

