"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "invalid_target_op_type"}> ({
    "func.return"() : () -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.structured.match"(%arg0) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.any_op
    %1 = "transform.apply_registered_pass"(%0) <{options = {}, pass_name = "duplicate-function-elimination"}> : (!transform.any_op) -> !transform.any_op
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

