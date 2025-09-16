"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "f", sym_visibility = "private"}> ({
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.tune.knob"() <{name = "coin", options = [true, false]}> : () -> !transform.any_param
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

