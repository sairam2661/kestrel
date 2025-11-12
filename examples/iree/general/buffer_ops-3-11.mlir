"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer, i32) -> (), sym_name = "buffer_store_i32", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.buffer, %arg1: i32):
    %0 = "arith.constant"() <{value = 64 : index}> : () -> index
    "hal.buffer.store"(%arg1, %arg0, %0) : (i32, !hal.buffer, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

