"builtin.module"() ({
  "func.func"() <{function_type = (!util.buffer, index) -> index, sym_name = "buffer_load_index"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "util.sizeof"() <{sizedType = index}> : () -> index
    %2 = "util.buffer.load"(%arg0, %arg1, %0, %1) : (!util.buffer, index, index, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

