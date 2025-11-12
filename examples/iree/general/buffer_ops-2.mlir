"builtin.module"() ({
  "util.func"() <{function_type = (index) -> !util.buffer, sym_name = "buffer_alloc", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "util.buffer.alloc"(%arg0) <{alignment = 16 : index}> : (index) -> !util.buffer
    "util.return"(%0) : (!util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

