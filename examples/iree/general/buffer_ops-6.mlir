"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer) -> index, sym_name = "buffer_size", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer):
    %0 = "util.buffer.size"(%arg0) : (!util.buffer) -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

