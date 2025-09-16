"builtin.module"() ({
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    %0 = "transform.collect_matching"(%arg0) <{matcher = @matcher}> : (!transform.any_op) -> !transform.any_op
    "transform.yield"() : () -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> !transform.any_op, sym_name = "matcher"}> ({
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

