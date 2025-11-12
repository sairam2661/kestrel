"builtin.module"() ({
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    "transform.iree.register_match_callbacks"() : () -> ()
    "transform.iree.match_callback"() <{callback_name = "_non_existing_name_", failure_propagation_mode = 2 : i32}> : () -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

