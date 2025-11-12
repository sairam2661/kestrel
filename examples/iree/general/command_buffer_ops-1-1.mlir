"builtin.module"() ({
  "util.func"() <{function_type = (!hal.command_buffer) -> (), sym_name = "command_buffer_finalize", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.command_buffer):
    "hal.command_buffer.finalize"(%arg0) : (!hal.command_buffer) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

