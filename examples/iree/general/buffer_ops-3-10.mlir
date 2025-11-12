"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer, i16) -> (), sym_name = "buffer_store_i16", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.buffer, %arg1: i16):
    %0 = "arith.constant"() <{value = 64 : index}> : () -> index
    "hal.buffer.store"(%arg1, %arg0, %0) : (i16, !hal.buffer, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

