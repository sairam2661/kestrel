"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer_view, !hal.buffer_view) -> (), sym_name = "expect_almost_eq", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.buffer_view, %arg1: !hal.buffer_view):
    "check.expect_almost_eq"(%arg0, %arg1) <{atol = 1.230000e+02 : f32, rtol = 0.000000e+00 : f32}> : (!hal.buffer_view, !hal.buffer_view) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

