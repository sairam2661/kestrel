"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer) -> i1, sym_name = "buffer_allocation_discard", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.buffer):
    %0 = "hal.buffer.allocation.discard"(%arg0) : (!hal.buffer) -> i1
    "util.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

