"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, index, index, index) -> !util.buffer, sym_name = "buffer_slice", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index, %arg2: index, %arg3: index):
    %0 = "util.buffer.slice"(%arg0, %arg2, %arg1, %arg3) : (!util.buffer, index, index, index) -> !util.buffer
    "util.return"(%0) : (!util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

