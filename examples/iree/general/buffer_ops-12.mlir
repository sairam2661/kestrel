"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, index, i32) -> (), sym_name = "buffer_store", sym_visibility = "public"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index, %arg2: i32):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 100 : index}> : () -> index
    "util.buffer.store"(%arg2, %arg0, %arg1, %1, %0) : (i32, !util.buffer, index, index, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

