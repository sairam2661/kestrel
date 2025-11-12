"builtin.module"() ({
  "func.func"() <{function_type = (!util.buffer) -> index, sym_name = "buffer_size"}> ({
  ^bb0(%arg0: !util.buffer):
    %0 = "util.buffer.size"(%arg0) : (!util.buffer) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

