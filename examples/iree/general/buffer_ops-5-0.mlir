"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer) -> !hal.buffer, sym_name = "buffer_subspan", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.buffer):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "arith.constant"() <{value = 200 : index}> : () -> index
    %2 = "hal.buffer.subspan"(%arg0, %0, %1) : (!hal.buffer, index, index) -> !hal.buffer
    "util.return"(%2) : (!hal.buffer) -> ()
  }) : () -> ()
}) : () -> ()

