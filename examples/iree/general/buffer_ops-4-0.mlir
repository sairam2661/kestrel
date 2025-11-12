"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer) -> (), sym_name = "buffer_allocation_preserve", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.buffer):
    "hal.buffer.allocation.preserve"(%arg0) : (!hal.buffer) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

