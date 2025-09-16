"builtin.module"() ({
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    "transform.test_add_test_extension"() <{message = "A"}> : () -> ()
    "transform.test_remove_test_extension"() : () -> ()
    "transform.test_add_test_extension"() <{message = "B"}> : () -> ()
    "transform.test_check_if_test_extension_present"(%arg0) : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

