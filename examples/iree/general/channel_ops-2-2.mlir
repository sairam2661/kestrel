"builtin.module"() ({
  "util.func"() <{function_type = (!hal.channel) -> (i32, i32), sym_name = "channel_rank_and_count", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !hal.channel):
    %0:2 = "hal.channel.rank_and_count"(%arg0) : (!hal.channel) -> (i32, i32)
    "util.return"(%0#0, %0#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

