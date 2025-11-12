"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, index) -> (), sym_name = "buffer_dealloc", sym_visibility = "public"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index):
    "util.buffer.dealloc"(%arg0, %arg1) : (!util.buffer, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

