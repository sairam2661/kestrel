"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer, f32) -> (), sym_name = "buffer_store_f32", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.buffer, %arg1: f32):
    %0 = "arith.constant"() <{value = 64 : index}> : () -> index
    "hal.buffer.store"(%arg1, %arg0, %0) : (f32, !hal.buffer, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

