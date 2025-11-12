"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer_view) -> !hal.buffer, sym_name = "buffer_view_buffer", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.buffer_view):
    %0 = "hal.buffer_view.buffer"(%arg0) : (!hal.buffer_view) -> !hal.buffer
    "util.return"(%0) : (!hal.buffer) -> ()
  }) : () -> ()
}) : () -> ()

