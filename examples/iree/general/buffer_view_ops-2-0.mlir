"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer, index, index) -> !hal.buffer_view, sym_name = "buffer_view_create", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.buffer, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %2 = "hal.buffer_view.create"(%arg0, %arg1, %arg2, %1, %0, %arg1, %arg2) : (!hal.buffer, index, index, i32, i32, index, index) -> !hal.buffer_view
    "util.return"(%2) : (!hal.buffer_view) -> ()
  }) : () -> ()
}) : () -> ()

