"builtin.module"() ({
  "func.func"() <{function_type = (!util.buffer, index) -> (), sym_name = "buffer_dealloc"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index):
    "util.buffer.dealloc"(%arg0, %arg1) : (!util.buffer, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

