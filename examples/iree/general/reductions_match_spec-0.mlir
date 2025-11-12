"builtin.module"() ({
  "transform.named_sequence"() <{arg_attrs = [{transform.readonly}], function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op):
    "transform.iree.register_match_callbacks"() : () -> ()
    %0:4 = "transform.iree.match_callback"(%arg0) <{callback_name = "reduction", failure_propagation_mode = 1 : i32}> : (!transform.any_op) -> (!transform.any_op, !transform.any_op, !transform.any_op, !transform.any_op)
    "transform.iree.emit_remark"(%0#0) <{message = "leading"}> : (!transform.any_op) -> ()
    "transform.iree.emit_remark"(%0#1) <{message = "fill"}> : (!transform.any_op) -> ()
    "transform.iree.emit_remark"(%0#2) <{message = "reduction"}> : (!transform.any_op) -> ()
    "transform.iree.emit_remark"(%0#3) <{message = "trailing"}> : (!transform.any_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

