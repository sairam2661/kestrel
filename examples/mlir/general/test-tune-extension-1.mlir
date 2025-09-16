"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "payload_for_schedule_with_selected_knobs", sym_visibility = "private"}> ({
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.tune.knob"() <{name = "coin", options = [true, false], selected = true}> : () -> !transform.any_param
      "transform.debug.emit_param_as_remark"(%0) : (!transform.any_param) -> ()
      %1 = "transform.tune.knob"() <{name = "animal", options = ["cat", "dog", unit], selected = "dog"}> : () -> !transform.any_param
      %2 = "transform.tune.knob"() <{name = "tile_size", options = [2, 4, 8, 16, 24, 32], selected = 8 : i64}> : () -> !transform.any_param
      %3 = "transform.tune.knob"() <{name = "magic_value", options = [2.000000e+00 : f32, 2.250000e+00 : f32, 2.500000e+00 : f32, 2.750000e+00 : f32, 3.000000e+00 : f32], selected = 2.500000e+00 : f32}> : () -> !transform.any_param
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

