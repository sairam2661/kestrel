"builtin.module"() ({
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    "transform.iree.register_match_callbacks"() : () -> ()
    %0 = "transform.iree.match_callback"(%arg0) <{callback_name = "_test_match_callback", failure_propagation_mode = 1 : i32}> : (!transform.any_op) -> !transform.any_op
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {test.iree_transform_do_not_match, transform.with_named_sequence} : () -> ()

