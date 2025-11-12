"builtin.module"() ({
  "func.func"() <{function_type = (!util.buffer, index, i32) -> (), sym_name = "buffer_store_i32"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index, %arg2: i32):
    %0 = "arith.constant"() <{value = 128 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    "util.buffer.store"(%arg2, %arg0, %arg1, %0, %1) : (i32, !util.buffer, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

