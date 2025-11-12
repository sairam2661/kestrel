"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer, index, index) -> !hal.buffer_view, sym_name = "buffer_view_create", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.buffer, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 128 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %4 = "hal.buffer_view.create"(%arg0, %0, %1, %3, %2, %arg1, %arg2) : (!hal.buffer, index, index, i32, i32, index, index) -> !hal.buffer_view
    "util.return"(%4) : (!hal.buffer_view) -> ()
  }) : () -> ()
}) : () -> ()

