"builtin.module"() ({
  "transform.named_sequence"() <{function_type = (!transform.any_op, !transform.param<i64>, !transform.param<i64>) -> (), sym_name = "__transform_main"}> ({
  ^bb0(%arg0: !transform.any_op, %arg1: !transform.param<i64>, %arg2: !transform.param<i64>):
    "transform.debug.emit_param_as_remark"(%arg1) : (!transform.param<i64>) -> ()
    "transform.debug.emit_param_as_remark"(%arg2) : (!transform.param<i64>) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()

