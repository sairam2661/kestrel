"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer, i64) -> (), sym_name = "buffer_store_i64", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.buffer, %arg1: i64):
    %0 = "arith.constant"() <{value = 64 : index}> : () -> index
    "hal.buffer.store"(%arg1, %arg0, %0) : (i64, !hal.buffer, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

