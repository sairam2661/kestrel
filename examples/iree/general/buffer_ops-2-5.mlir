"builtin.module"() ({
  "func.func"() <{function_type = (!util.buffer, index, index, index) -> !util.buffer, sym_name = "buffer_slice"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index, %arg2: index, %arg3: index):
    %0 = "util.buffer.slice"(%arg0, %arg2, %arg1, %arg3) <{alignment = 16 : index}> : (!util.buffer, index, index, index) -> !util.buffer
    "func.return"(%0) : (!util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

