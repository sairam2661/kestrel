"builtin.module"() ({
  "func.func"() <{function_type = (index) -> !util.buffer, sym_name = "buffer_alloc_aligned"}> ({
  ^bb0(%arg0: index):
    %0 = "util.buffer.alloc"(%arg0) <{alignment = 32 : index}> : (index) -> !util.buffer
    "func.return"(%0) : (!util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

