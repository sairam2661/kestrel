"builtin.module"() ({
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg1: !transform.any_op):
    %1 = "transform.collect_matching"(%arg1) <{matcher = @matcher}> : (!transform.any_op) -> !transform.any_op
    "transform.yield"() : () -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> !transform.any_op, sym_name = "matcher"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.merge_handles"(%arg0, %arg0) : (!transform.any_op, !transform.any_op) -> !transform.any_op
    "transform.yield"(%0) : (!transform.any_op) -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

