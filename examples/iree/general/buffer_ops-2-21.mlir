"builtin.module"() ({
  "func.func"() <{function_type = (!util.buffer, index, index) -> (), sym_name = "buffer_store_index"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "util.sizeof"() <{sizedType = index}> : () -> index
    "util.buffer.store"(%arg2, %arg0, %arg1, %0, %1) : (index, !util.buffer, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

