"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_annotation"}> ({
    %4 = "test.annotate_me"() : () -> i1
    %5 = "test.annotate_me"() {existing_attr = "test"} : () -> i1
    %6 = "test.annotate_me"() {new_attr = 0 : i64} : () -> i1
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["test.annotate_me"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.test_produce_param_with_number_of_test_ops"(%0) : (!transform.any_op) -> !transform.test_dialect_param
      "transform.annotate"(%0, %1) <{name = "new_attr"}> : (!transform.any_op, !transform.test_dialect_param) -> ()
      %2 = "transform.param.constant"() <{value = 2 : i64}> : () -> !transform.param<i64>
      "transform.annotate"(%0, %2) <{name = "broadcast_attr"}> : (!transform.any_op, !transform.param<i64>) -> ()
      "transform.annotate"(%0) <{name = "unit_attr"}> : (!transform.any_op) -> ()
      %3 = "transform.param.constant"() <{value = "example"}> : () -> !transform.any_param
      "transform.annotate"(%0, %3) <{name = "any_attr"}> : (!transform.any_op, !transform.any_param) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

