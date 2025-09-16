"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "replacement_op_not_found"}> ({
    "test.container"() ({
      %2 = "test.foo"() {replace_with_new_op = "test.bar"} : () -> i32
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "patterns"}> ({
  ^bb0(%arg1: !transform.any_op):
    "transform.apply_patterns"(%arg1) <{max_iterations = -1 : i64, max_num_rewrites = -1 : i64}> ({
      "transform.apply_patterns.transform.test_patterns"() : () -> ()
    }) : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.structured.match"(%arg0) <{ops = ["test.container"]}> : (!transform.any_op) -> !transform.any_op
    %1 = "transform.structured.match"(%arg0) <{ops = ["test.foo"]}> : (!transform.any_op) -> !transform.any_op
    "transform.annotate"(%1) <{name = "annotated"}> : (!transform.any_op) -> ()
    "transform.include"(%0) <{failure_propagation_mode = 1 : i32, target = @patterns}> : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

