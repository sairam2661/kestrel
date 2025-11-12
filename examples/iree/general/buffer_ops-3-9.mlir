"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer, i8) -> (), sym_name = "buffer_store_i8", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.buffer, %arg1: i8):
    %0 = "arith.constant"() <{value = 64 : index}> : () -> index
    "hal.buffer.store"(%arg1, %arg0, %0) : (i8, !hal.buffer, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

