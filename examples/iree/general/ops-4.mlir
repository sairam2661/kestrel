"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer_view, !hal.buffer_view) -> (), sym_name = "expect_eq", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view):
    "check.expect_eq"(%arg0, %arg1) : (!hal.buffer_view, !hal.buffer_view) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

