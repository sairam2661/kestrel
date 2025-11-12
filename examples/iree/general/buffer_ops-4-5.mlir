"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer) -> i32, sym_name = "buffer_load", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.buffer):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "hal.buffer.load"(%arg0, %0) : (!hal.buffer, index) -> i32
    "util.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

