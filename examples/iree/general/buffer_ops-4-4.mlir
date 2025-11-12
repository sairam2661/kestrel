"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer) -> index, sym_name = "buffer_length", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.buffer):
    %0 = "hal.buffer.length"(%arg0) : (!hal.buffer) -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

