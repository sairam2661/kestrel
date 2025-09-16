"builtin.module"() ({
  "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg1: !transform.any_op):
    %0 = "transform.collect_matching"(%arg1) <{matcher = @matcher}> : (!transform.any_op) -> !transform.any_op
    "transform.debug.emit_remark_at"(%0) <{message = "matched"}> : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> !transform.any_op, sym_name = "matcher"}> ({
  ^bb0(%arg0: !transform.any_op):
    "transform.match.operation_name"(%arg0) <{op_names = ["transform.debug.emit_remark_at", "transform.collect_matching"]}> : (!transform.any_op) -> ()
    "transform.yield"(%arg0) : (!transform.any_op) -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

